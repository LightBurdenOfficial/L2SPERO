package com.l2jfrozen.gameserver.model.entity.event;

import java.io.File;
import java.util.logging.Logger;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import javolution.util.FastMap;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.l2jfrozen.gameserver.model.actor.instance.L2PcInstance;
import com.l2jfrozen.gameserver.model.entity.Announcements;
import com.l2jfrozen.gameserver.network.clientpackets.Say2;
import com.l2jfrozen.gameserver.network.serverpackets.CreatureSay;
import com.l2jfrozen.util.random.Rnd;

public class Trivia
{
 enum EventState
 {
 INACTIVE,
 ASKING,
 ANSWERING,
 CORRECT,
 REWARDING,
 ENDING
 }

 protected static final Logger _log = Logger.getLogger(Trivia.class.getName());
 private static EventState _state = EventState.INACTIVE;
 // ID of the reward
 private static int _rewardID = 9142;
 // Ammount of the reward
 private static int _rewardCount = 1;
 private static long questionTime = 0;
 private static FastMap<String, String> q_a = new FastMap<String, String>();
 public static int asked = 0;
 private static String question, answer;

 public Trivia()
 {

 }

 public static void init()
 {
 setState(EventState.INACTIVE);
 getQuestions();
 }

 private static void getQuestions()
 {
 File file = new File("config/Trivia.xml");
 String ask, answer;
 try
 {
 DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
 DocumentBuilder db = dbf.newDocumentBuilder();
 Document doc = db.parse(file);
 doc.getDocumentElement().normalize();
 NodeList trvLst = doc.getElementsByTagName("trivia");
 for (int s = 0; s < trvLst.getLength(); s++)
 {
 Node trvNode = trvLst.item(s);
 if (trvNode.getNodeType() == Node.ELEMENT_NODE)
 {
 Element triviaElement = (Element) trvNode;
 NodeList trvList = triviaElement.getElementsByTagName("question");
 Element questionElement = (Element) trvList.item(0);

 NodeList textQsList = questionElement.getChildNodes();
 ask = textQsList.item(0).getNodeValue().trim();

 NodeList answerList = triviaElement.getElementsByTagName("answer");
 Element answerElement = (Element) answerList.item(0);

 NodeList textAnList = answerElement.getChildNodes();
 answer = textAnList.item(0).getNodeValue().trim();
 q_a.put(ask, answer);
 }

 }
 }
 catch (Exception e)
 {
 e.printStackTrace();
 }
 }

 public static void handleAnswer(String s, L2PcInstance pi)
 {
 if (s.equalsIgnoreCase(answer))
 {
 pi.sendPacket(new CreatureSay(12345, Say2.TELL, "Trivia", "Correct!"));
 setState(EventState.REWARDING);
 Announcements.getInstance().gameAnnounceToAll("Winner is " + pi.getName() + "! He answered in " + (System.currentTimeMillis() - questionTime) / 1000 + " seconds!");
 announceCorrect();
 pi.addItem("Trivia", _rewardID, _rewardCount, pi, true);
 }
 else
 pi.sendPacket(new CreatureSay(1234, 2, "Trivia", "Wrong answer."));

 }

 public static void startTrivia()
 {
 Announcements.getInstance().gameAnnounceToAll("Trivia Event begins! You have to PM Trivia with your answer, get ready!");
 setState(EventState.ASKING);
 }

 public static void askQuestion()
 {
 pickQuestion();
 Announcements.getInstance().gameAnnounceToAll("Question: " + question);
 questionTime = System.currentTimeMillis();
 setState(EventState.ANSWERING);
 }

 public static void announceCorrect()
 {
 setState(EventState.CORRECT);
 Announcements.getInstance().gameAnnounceToAll("The correct answer was: " + answer);
 asked++;
 setState(EventState.ASKING);
 }

 public static void endEvent()
 {
 setState(EventState.INACTIVE);
 asked = 0;
 }

 private static void pickQuestion()
 {
 int roll = Rnd.get(q_a.size()) + 1;
 int i = 0;
 for (String q : q_a.keySet())
 {
 ++i;
 if (i == roll)
 {
 answer = q_a.get(q);
 question = q;
 return;
 }
 }
 }

 public static boolean isInactive()
 {
 boolean isInactive;
 synchronized (_state)
 {
 isInactive = _state == EventState.INACTIVE;
 }
 return isInactive;
 }

 public static boolean isAnswering()
 {
 boolean isAnswering;
 synchronized (_state)
 {
 isAnswering = _state == EventState.ANSWERING;
 }
 return isAnswering;
 }

 public static boolean isEnding()
 {
 boolean isEnding;
 synchronized (_state)
 {
 isEnding = _state == EventState.ENDING;
 }
 return isEnding;
 }

 public static boolean isCorrect()
 {
 boolean isCorrect;
 synchronized (_state)
 {
 isCorrect = _state == EventState.CORRECT;
 }
 return isCorrect;
 }

 public static boolean isRewarding()
 {
 boolean isRewarding;
 synchronized (_state)
 {
 isRewarding = _state == EventState.REWARDING;
 }
 return isRewarding;
 }

 public static boolean isAsking()
 {
 boolean isAsking;
 synchronized (_state)
 {
 isAsking = _state == EventState.ASKING;
 }
 return isAsking;
 }

 private static void setState(EventState state)
 {
 synchronized (_state)
 {
 _state = state;
 }
 }

 public static Trivia getInstance()
 {
 return SingletonHolder._instance;
 }

 private static class SingletonHolder
 {
 protected static final Trivia _instance = new Trivia();
 }

}