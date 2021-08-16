package com.l2jfrozen.gameserver;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import org.apache.log4j.Logger;

import com.l2jfrozen.Config;
import com.l2jfrozen.gameserver.thread.ThreadPoolManager;

/**
 * This Config for Auto Restart GameServer Initialize class getInstance() Set Time in Config File Thank You L2JServer | L2JRussia
 * @author L2JRussia
 */
public class Restart
{
    // Variaveis globais
    private static Restart _instance = null;
    protected static final Logger LOGGER = Logger.getLogger(Restart.class.getName());
    private Calendar NextRestart;
    private final SimpleDateFormat format = new SimpleDateFormat("HH:mm");
    
    // Singleton
    public static Restart getInstance()
    {
        if (_instance == null)
        {
            _instance = new Restart();
        }
        return _instance;
    }
    
    public String getRestartNextTime()
    {
        if (NextRestart.getTime() != null)
        {
            return format.format(NextRestart.getTime());
        }
        return "Erro";
    }
    
    // Connstrutor
    private Restart()
    {
        // :D
    }
    
    public void StartCalculationOfNextRestartTime()
    {
        LOGGER.info("#####################################");
        LOGGER.info("#[Restart System]: System actived...#");
        LOGGER.info("#####################################");
        try
        {
            Calendar currentTime = Calendar.getInstance();
            Calendar testStartTime = null;
            long flush2 = 0, timeL = 0;
            int count = 0;
            
            for (String timeOfDay : Config.RESTART_INTERVAL_BY_TIME_OF_DAY)
            {
                testStartTime = Calendar.getInstance();
                testStartTime.setLenient(true);
                String[] splitTimeOfDay = timeOfDay.split(":");
                testStartTime.set(Calendar.HOUR_OF_DAY, Integer.parseInt(splitTimeOfDay[0]));
                testStartTime.set(Calendar.MINUTE, Integer.parseInt(splitTimeOfDay[1]));
                testStartTime.set(Calendar.SECOND, 00);
                // Verifica a validade to tempo
                if (testStartTime.getTimeInMillis() < currentTime.getTimeInMillis())
                {
                    testStartTime.add(Calendar.DAY_OF_MONTH, 1);
                }
                
                // TimeL Recebe o quanto falta de milisegundos para o restart
                timeL = testStartTime.getTimeInMillis() - currentTime.getTimeInMillis();
                
                // Verifica qual horario sera o proximo restart
                if (count == 0)
                {
                    flush2 = timeL;
                    NextRestart = testStartTime;
                }
                
                if (timeL < flush2)
                {
                    flush2 = timeL;
                    NextRestart = testStartTime;
                }
                
                count++;
            }
            LOGGER.info("[AutoRestart]: Next Restart Time: " + NextRestart.getTime().toString());
            ThreadPoolManager.getInstance().scheduleGeneral(new StartRestartTask(), flush2);
        }
        catch (Exception e)
        {
            System.out.println("[AutoRestart]: The restart automated server presented error in load restarts period config !");
        }
    }
    
    class StartRestartTask implements Runnable
    {
        @Override
        public void run()
        {
            LOGGER.info("Start automated restart GameServer.");
            Shutdown.getInstance().autoRestart(Config.RESTART_SECONDS);
        }
    }
}