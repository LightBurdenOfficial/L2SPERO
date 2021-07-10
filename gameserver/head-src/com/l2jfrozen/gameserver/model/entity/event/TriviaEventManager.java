package com.l2jfrozen.gameserver.model.entity.event;

import java.util.Calendar;
import java.util.concurrent.ScheduledFuture;
import java.util.logging.Logger;

import com.l2jfrozen.Config;
import com.l2jfrozen.gameserver.thread.ThreadPoolManager;

public class TriviaEventManager
{
 protected static final Logger _log = Logger.getLogger(TriviaEventManager.class.getName());

 /** Task for event cycles<br> */
 private TriviaStartTask _task;

 /**
 * New instance only by getInstance()<br>
 */
 private TriviaEventManager()
 {
 if (Config.TRIVIA_ENABLED)
 {
 Trivia.init();
 this.scheduleEventStart();
 _log.warning("TriviaEventEngine[TriviaManager.TriviaManager()]: Started.");
 }
 else
 {
 _log.warning("TriviaEventEngine[TriviaManager.TriviaManager()]: Engine is disabled.");
 }
 }

 public static TriviaEventManager getInstance()
 {
 return SingletonHolder._instance;
 }

 /**
 * Starts the event
 */
 public void scheduleEventStart()
 {
 try
 {
 Calendar currentTime = Calendar.getInstance();
 Calendar nextStartTime = null;
 Calendar testStartTime = null;
 for (String timeOfDay : Config.TRIVIA_INTERVAL)
 {
 // Creating a Calendar object from the specified interval value
 testStartTime = Calendar.getInstance();
 testStartTime.setLenient(true);
 String[] splitTimeOfDay = timeOfDay.split(":");
 testStartTime.set(Calendar.HOUR_OF_DAY, Integer.parseInt(splitTimeOfDay[0]));
 testStartTime.set(Calendar.MINUTE, Integer.parseInt(splitTimeOfDay[1]));
 // If the date is in the past, make it the next day (Example: Checking for "1:00", when the time is 23:57.)
 if (testStartTime.getTimeInMillis() < currentTime.getTimeInMillis())
 {
 testStartTime.add(Calendar.DAY_OF_MONTH, 1);
 }
 // Check for the test date to be the minimum (smallest in the specified list)
 if (nextStartTime == null || testStartTime.getTimeInMillis() < nextStartTime.getTimeInMillis())
 {
 nextStartTime = testStartTime;
 }
 }
 _task = new TriviaStartTask(nextStartTime.getTimeInMillis());
 ThreadPoolManager.getInstance().executeTask(_task);
 }
 catch (Exception e)
 {
 _log.warning("TriviaEventEngine[TriviaManager.scheduleEventStart()]: Error figuring out a start time. Check TriviaEventInterval in config file.");
 }
 }

 class TriviaStartTask implements Runnable
 {
 private long _startTime;
 public ScheduledFuture<?> nextRun;

 public TriviaStartTask(long startTime)
 {
 _startTime = startTime;
 }

 public void setStartTime(long startTime)
 {
 _startTime = startTime;
 }

 /**
 * @see java.lang.Runnable#run()
 */
 @Override
 public void run()
 {
 int delay = (int) Math.round((_startTime - System.currentTimeMillis()) / 1000.0);
 int nextMsg = 0;
 if (delay > 3600)
 {
 nextMsg = delay - 3600;
 }
 else if (delay > 1800)
 {
 nextMsg = delay - 1800;
 }
 else if (delay > 900)
 {
 nextMsg = delay - 900;
 }
 else if (delay > 600)
 {
 nextMsg = delay - 600;
 }
 else if (delay > 300)
 {
 nextMsg = delay - 300;
 }
 else if (delay > 60)
 {
 nextMsg = delay - 60;
 }
 else if (delay > 5)
 {
 nextMsg = delay - 5;
 }
 else if (delay > 0)
 {
 nextMsg = delay;
 }
 else
 {
 if (Trivia.isInactive())
 {
 startTrivia();
 }
 else if (Trivia.isAsking())
 {
 if (Trivia.asked < Config.TRIVIA_TO_ASK)
 {
 startQuestion();
 }
 else
 {
 endTrivia();
 }
 }
 else if (Trivia.isAnswering())
 {
 announceAnswer();
 }
 }

 if (delay > 0)
 {
 nextRun = ThreadPoolManager.getInstance().scheduleGeneral(this, nextMsg * 1000);
 }
 }
 }

 public void startTrivia()
 {
 Trivia.startTrivia();
 _task.setStartTime(System.currentTimeMillis() + 1000L * 10);
 ThreadPoolManager.getInstance().executeTask(_task);
 }

 public void startQuestion()
 {
 Trivia.askQuestion();
 _task.setStartTime(System.currentTimeMillis() + 1000L * Config.TRIVIA_ANSWER_TIME);
 ThreadPoolManager.getInstance().executeTask(_task);
 }

 public void endTrivia()
 {
 Trivia.endEvent();
 this.scheduleEventStart();
 }

 public void announceAnswer()
 {
 Trivia.announceCorrect();
 _task.setStartTime(System.currentTimeMillis() + 1000L * 10);
 ThreadPoolManager.getInstance().executeTask(_task);
 }

 @SuppressWarnings("synthetic-access")
 private static class SingletonHolder
 {
 protected static final TriviaEventManager _instance = new TriviaEventManager();
 }
}