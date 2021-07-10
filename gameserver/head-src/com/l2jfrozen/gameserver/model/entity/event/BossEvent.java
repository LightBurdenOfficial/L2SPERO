package com.l2jfrozen.gameserver.model.entity.event;

import com.l2jfrozen.Config;
import com.l2jfrozen.gameserver.datatables.sql.NpcTable;
import com.l2jfrozen.gameserver.datatables.sql.SpawnTable;
import com.l2jfrozen.gameserver.model.spawn.L2Spawn;
import com.l2jfrozen.gameserver.model.entity.Announcements;
import com.l2jfrozen.gameserver.templates.L2NpcTemplate;

/**
 * @author Axcel Kuhn L2Adventeam
 * O Evento funciona da seguinte forma ele da respawn em um mob em uma das 10 loc aleatorias e faz o announce se ninguem matar o mob em tempo determinado deleta o mob ou se alguém matar também deleta.
 * pode ser configurado os horarios que o mob vai nascer exemplo: 12,00h 13,00:h ... etc
 * Toda parte do evento foi feita por min Axcel Kuhn. A unica parte que peguei de outro mod foi a de iniciar o evento em tempo determinado que foi do mod de restart automatico
 */

public class BossEvent
{

 public static L2Spawn _bossSpawn;
 public static int _bossHeading = 0;
 public static String _eventName = "";

 public static void bossSpawnMonster()
 {
 {
 int valor;
 valor = 1 + (int) (Math.random() * 10);
 if (valor == 1)
 {
 spawnMonsterloc1();
 Announcements.getInstance().gameAnnounceToAll("The boss was born in the coordinates " + Config.loc1x + "," + " " + Config.loc1y + ", " + Config.loc1z);
 Announcements.getInstance().gameAnnounceToAll(Config.dica1);
 }
 if (valor == 2)
 {
 spawnMonsterloc2();
 Announcements.getInstance().gameAnnounceToAll("The boss was born in the coordinates " + Config.loc2x + "," + " " + Config.loc2y + ", " + Config.loc2z);
 Announcements.getInstance().gameAnnounceToAll(Config.dica2);
 }
 if (valor == 3)
 {
 spawnMonsterloc3();
 Announcements.getInstance().gameAnnounceToAll("The boss was born in the coordinates " + Config.loc3x + "," + " " + Config.loc3y + ", " + Config.loc3z);
 Announcements.getInstance().gameAnnounceToAll(Config.dica3);
 }
 if (valor == 4)
 {
 spawnMonsterloc4();
 Announcements.getInstance().gameAnnounceToAll("The boss was born in the coordinates " + Config.loc4x + "," + " " + Config.loc4y + ", " + Config.loc4z);
 Announcements.getInstance().gameAnnounceToAll(Config.dica4);
 }
 if (valor == 5)
 {
 spawnMonsterloc5();
 Announcements.getInstance().gameAnnounceToAll("The boss was born in the coordinates " + Config.loc5x + "," + " " + Config.loc5y + ", " + Config.loc5z);
 Announcements.getInstance().gameAnnounceToAll(Config.dica5);
 }
 if (valor == 6)
 {
 spawnMonsterloc6();
 Announcements.getInstance().gameAnnounceToAll("The boss was born in the coordinates " + Config.loc6x + "," + " " + Config.loc6y + ", " + Config.loc6z);
 Announcements.getInstance().gameAnnounceToAll(Config.dica6);
 }
 if (valor == 7)
 {
 spawnMonsterloc7();
 Announcements.getInstance().gameAnnounceToAll("The boss was born in the coordinates " + Config.loc7x + "," + " " + Config.loc7y + ", " + Config.loc7z);
 Announcements.getInstance().gameAnnounceToAll(Config.dica7);
 }
 if (valor == 8)
 {
 spawnMonsterloc8();
 Announcements.getInstance().gameAnnounceToAll("The boss was born in the coordinates " + Config.loc8x + "," + " " + Config.loc8y + ", " + Config.loc8z);
 Announcements.getInstance().gameAnnounceToAll(Config.dica8);
 }
 if (valor == 9)
 {
 spawnMonsterloc9();
 Announcements.getInstance().gameAnnounceToAll("The boss was born in the coordinates " + Config.loc9x + "," + " " + Config.loc9y + ", " + Config.loc9z);
 Announcements.getInstance().gameAnnounceToAll(Config.dica9);
 }
 if (valor == 10)
 {
 spawnMonsterloc10();
 Announcements.getInstance().gameAnnounceToAll("The boss was born in the coordinates " + Config.loc10x + "," + " " + Config.loc10y + ", " + Config.loc10z);
 Announcements.getInstance().gameAnnounceToAll(Config.dica10);
 }
 Announcements.getInstance().gameAnnounceToAll("You have "+Config.time_unrespawn+" minutes to find and kill the boss");
 try
 {
 Thread.sleep(Config.time_unrespawn *1000 *60); // Tempo em Minutos
 }
 catch (Exception e)
 {
 e.printStackTrace();
 }
 Announcements.getInstance().gameAnnounceToAll("End of Treasure Event");
 unspawnEventBoss();
 }

 }

 private static void spawnMonsterloc1()
 {
 L2NpcTemplate tmpl = NpcTable.getInstance().getTemplate(Config.IdBoss);// ID do mob
 try
 {
 _bossSpawn = new L2Spawn(tmpl);

 _bossSpawn.setLocx(loc1x()); // loc x
 _bossSpawn.setLocy(loc1y()); // loc y
 _bossSpawn.setLocz(loc1z()); // loc z
 _bossSpawn.setAmount(1);
 _bossSpawn.setHeading(0);
 _bossSpawn.setRespawnDelay(1);

 SpawnTable.getInstance().addNewSpawn(_bossSpawn, false);

 _bossSpawn.init();
 _bossSpawn.getLastSpawn().setTitle(_eventName);
 _bossSpawn.getLastSpawn().isAggressive();
 _bossSpawn.getLastSpawn().decayMe();
 _bossSpawn.getLastSpawn().spawnMe(_bossSpawn.getLastSpawn().getX(), _bossSpawn.getLastSpawn().getY(), _bossSpawn.getLastSpawn().getZ());
 }
 catch (Exception e)
 {
 System.out.println("Error in Treasure Event");
 }
 }

 private static void spawnMonsterloc2()
 {
 L2NpcTemplate tmpl = NpcTable.getInstance().getTemplate(Config.IdBoss);// ID do mob
 try
 {
 _bossSpawn = new L2Spawn(tmpl);

 _bossSpawn.setLocx(loc2x()); // loc x
 _bossSpawn.setLocy(loc2y()); // loc y
 _bossSpawn.setLocz(loc2z()); // loc z
 _bossSpawn.setAmount(1);
 _bossSpawn.setHeading(0);
 _bossSpawn.setRespawnDelay(1);

 SpawnTable.getInstance().addNewSpawn(_bossSpawn, false);

 _bossSpawn.init();
 _bossSpawn.getLastSpawn().setTitle(_eventName);
 _bossSpawn.getLastSpawn().isAggressive();
 _bossSpawn.getLastSpawn().decayMe();
 _bossSpawn.getLastSpawn().spawnMe(_bossSpawn.getLastSpawn().getX(), _bossSpawn.getLastSpawn().getY(), _bossSpawn.getLastSpawn().getZ());
 }
 catch (Exception e)
 {
 System.out.println("Error in Treasure Event");
 }
 }

 private static void spawnMonsterloc3()
 {
 L2NpcTemplate tmpl = NpcTable.getInstance().getTemplate(Config.IdBoss);// ID do mob
 try
 {
 _bossSpawn = new L2Spawn(tmpl);

 _bossSpawn.setLocx(loc3x()); // loc x
 _bossSpawn.setLocy(loc3y()); // loc y
 _bossSpawn.setLocz(loc3z()); // loc z
 _bossSpawn.setAmount(1);
 _bossSpawn.setHeading(0);
 _bossSpawn.setRespawnDelay(1);

 SpawnTable.getInstance().addNewSpawn(_bossSpawn, false);

 _bossSpawn.init();
 _bossSpawn.getLastSpawn().setTitle(_eventName);
 _bossSpawn.getLastSpawn().isAggressive();
 _bossSpawn.getLastSpawn().decayMe();
 _bossSpawn.getLastSpawn().spawnMe(_bossSpawn.getLastSpawn().getX(), _bossSpawn.getLastSpawn().getY(), _bossSpawn.getLastSpawn().getZ());
 }
 catch (Exception e)
 {
 System.out.println("Error in Treasure Event");
 }
 }

 private static void spawnMonsterloc4()
 {
 L2NpcTemplate tmpl = NpcTable.getInstance().getTemplate(Config.IdBoss);// ID do mob
 try
 {
 _bossSpawn = new L2Spawn(tmpl);

 _bossSpawn.setLocx(loc4x()); // loc x
 _bossSpawn.setLocy(loc4y()); // loc y
 _bossSpawn.setLocz(loc4z()); // loc z
 _bossSpawn.setAmount(1);
 _bossSpawn.setHeading(0);
 _bossSpawn.setRespawnDelay(1);

 SpawnTable.getInstance().addNewSpawn(_bossSpawn, false);

 _bossSpawn.init();
 _bossSpawn.getLastSpawn().setTitle(_eventName);
 _bossSpawn.getLastSpawn().isAggressive();
 _bossSpawn.getLastSpawn().decayMe();
 _bossSpawn.getLastSpawn().spawnMe(_bossSpawn.getLastSpawn().getX(), _bossSpawn.getLastSpawn().getY(), _bossSpawn.getLastSpawn().getZ());
 }
 catch (Exception e)
 {
 System.out.println("Error in Treasure Event");
 }
 }

 private static void spawnMonsterloc5()
 {
 L2NpcTemplate tmpl = NpcTable.getInstance().getTemplate(Config.IdBoss);// ID do mob
 try
 {
 _bossSpawn = new L2Spawn(tmpl);

 _bossSpawn.setLocx(loc5x()); // loc x
 _bossSpawn.setLocy(loc5y()); // loc y
 _bossSpawn.setLocz(loc5z()); // loc z
 _bossSpawn.setAmount(1);
 _bossSpawn.setHeading(0);
 _bossSpawn.setRespawnDelay(1);

 SpawnTable.getInstance().addNewSpawn(_bossSpawn, false);

 _bossSpawn.init();
 _bossSpawn.getLastSpawn().setTitle(_eventName);
 _bossSpawn.getLastSpawn().isAggressive();
 _bossSpawn.getLastSpawn().decayMe();
 _bossSpawn.getLastSpawn().spawnMe(_bossSpawn.getLastSpawn().getX(), _bossSpawn.getLastSpawn().getY(), _bossSpawn.getLastSpawn().getZ());
 }
 catch (Exception e)
 {
 System.out.println("Error in Treasure Event");
 }
 }

 private static void spawnMonsterloc6()
 {
 L2NpcTemplate tmpl = NpcTable.getInstance().getTemplate(Config.IdBoss);// ID do mob
 try
 {
 _bossSpawn = new L2Spawn(tmpl);

 _bossSpawn.setLocx(loc6x()); // loc x
 _bossSpawn.setLocy(loc6y()); // loc y
 _bossSpawn.setLocz(loc6z()); // loc z
 _bossSpawn.setAmount(1);
 _bossSpawn.setHeading(0);
 _bossSpawn.setRespawnDelay(1);

 SpawnTable.getInstance().addNewSpawn(_bossSpawn, false);

 _bossSpawn.init();
 _bossSpawn.getLastSpawn().setTitle(_eventName);
 _bossSpawn.getLastSpawn().isAggressive();
 _bossSpawn.getLastSpawn().decayMe();
 _bossSpawn.getLastSpawn().spawnMe(_bossSpawn.getLastSpawn().getX(), _bossSpawn.getLastSpawn().getY(), _bossSpawn.getLastSpawn().getZ());
 }
 catch (Exception e)
 {
 System.out.println("Error in Treasure Event");
 }
 }

 private static void spawnMonsterloc7()
 {
 L2NpcTemplate tmpl = NpcTable.getInstance().getTemplate(Config.IdBoss);// ID do mob
 try
 {
 _bossSpawn = new L2Spawn(tmpl);

 _bossSpawn.setLocx(loc7x()); // loc x
 _bossSpawn.setLocy(loc7y()); // loc y
 _bossSpawn.setLocz(loc7z()); // loc z
 _bossSpawn.setAmount(1);
 _bossSpawn.setHeading(0);
 _bossSpawn.setRespawnDelay(1);

 SpawnTable.getInstance().addNewSpawn(_bossSpawn, false);

 _bossSpawn.init();
 _bossSpawn.getLastSpawn().setTitle(_eventName);
 _bossSpawn.getLastSpawn().isAggressive();
 _bossSpawn.getLastSpawn().decayMe();
 _bossSpawn.getLastSpawn().spawnMe(_bossSpawn.getLastSpawn().getX(), _bossSpawn.getLastSpawn().getY(), _bossSpawn.getLastSpawn().getZ());
 }
 catch (Exception e)
 {
 System.out.println("Error in Treasure Event");
 }
 }

 private static void spawnMonsterloc8()
 {
 L2NpcTemplate tmpl = NpcTable.getInstance().getTemplate(Config.IdBoss);// ID do mob
 try
 {
 _bossSpawn = new L2Spawn(tmpl);

 _bossSpawn.setLocx(loc8x()); // loc x
 _bossSpawn.setLocy(loc8y()); // loc y
 _bossSpawn.setLocz(loc8z()); // loc z
 _bossSpawn.setAmount(1);
 _bossSpawn.setHeading(0);
 _bossSpawn.setRespawnDelay(1);

 SpawnTable.getInstance().addNewSpawn(_bossSpawn, false);

 _bossSpawn.init();
 _bossSpawn.getLastSpawn().setTitle(_eventName);
 _bossSpawn.getLastSpawn().isAggressive();
 _bossSpawn.getLastSpawn().decayMe();
 _bossSpawn.getLastSpawn().spawnMe(_bossSpawn.getLastSpawn().getX(), _bossSpawn.getLastSpawn().getY(), _bossSpawn.getLastSpawn().getZ());
 }
 catch (Exception e)
 {
 System.out.println("Error in Treasure Event");
 }
 }

 private static void spawnMonsterloc9()
 {
 L2NpcTemplate tmpl = NpcTable.getInstance().getTemplate(Config.IdBoss);// ID do mob
 try
 {
 _bossSpawn = new L2Spawn(tmpl);

 _bossSpawn.setLocx(loc9x()); // loc x
 _bossSpawn.setLocy(loc9y()); // loc y
 _bossSpawn.setLocz(loc9z()); // loc z
 _bossSpawn.setAmount(1);
 _bossSpawn.setHeading(0);
 _bossSpawn.setRespawnDelay(1);

 SpawnTable.getInstance().addNewSpawn(_bossSpawn, false);

 _bossSpawn.init();
 _bossSpawn.getLastSpawn().setTitle(_eventName);
 _bossSpawn.getLastSpawn().isAggressive();
 _bossSpawn.getLastSpawn().decayMe();
 _bossSpawn.getLastSpawn().spawnMe(_bossSpawn.getLastSpawn().getX(), _bossSpawn.getLastSpawn().getY(), _bossSpawn.getLastSpawn().getZ());
 }
 catch (Exception e)
 {
 System.out.println("Error in Treasure Event");
 }
 }

 private static void spawnMonsterloc10()
 {
 L2NpcTemplate tmpl = NpcTable.getInstance().getTemplate(Config.IdBoss);// ID do mob
 try
 {
 _bossSpawn = new L2Spawn(tmpl);

 _bossSpawn.setLocx(loc10x()); // loc x
 _bossSpawn.setLocy(loc10y()); // loc y
 _bossSpawn.setLocz(loc10z()); // loc z
 _bossSpawn.setAmount(1);
 _bossSpawn.setHeading(0);
 _bossSpawn.setRespawnDelay(1);

 SpawnTable.getInstance().addNewSpawn(_bossSpawn, false);

 _bossSpawn.init();
 _bossSpawn.getLastSpawn().setTitle(_eventName);
 _bossSpawn.getLastSpawn().isAggressive();
 _bossSpawn.getLastSpawn().decayMe();
 _bossSpawn.getLastSpawn().spawnMe(_bossSpawn.getLastSpawn().getX(), _bossSpawn.getLastSpawn().getY(), _bossSpawn.getLastSpawn().getZ());
 }
 catch (Exception e)
 {
 System.out.println("Error in Treasure Event");
 }
 }

 public static void unspawnEventBoss()
 {
 if (_bossSpawn == null)
 return;

 _bossSpawn.getLastSpawn().deleteMe();
 _bossSpawn.stopRespawn();
 SpawnTable.getInstance().deleteSpawn(_bossSpawn, true);
 }

 public static void unspawnEventBoss2()
 {
 if (_bossSpawn == null)
 return;

 _bossSpawn.getLastSpawn().deleteMe();
 _bossSpawn.stopRespawn();
 Announcements.getInstance().gameAnnounceToAll("End of Event! The boss was killed");
 SpawnTable.getInstance().deleteSpawn(_bossSpawn, true);
 }

 private static int loc1x()
 {
 int loc1x = Config.loc1x;
 return loc1x;
 }

 private static int loc1y()
 {
 int loc1y = Config.loc1y;
 return loc1y;
 }

 private static int loc1z()
 {
 int loc1z = Config.loc1z;
 return loc1z;
 }

 private static int loc2x()
 {
 int loc2x = Config.loc2x;
 return loc2x;
 }

 private static int loc2y()
 {
 int loc2y = Config.loc2y;
 return loc2y;
 }

 private static int loc2z()
 {
 int loc2z = Config.loc2z;
 return loc2z;
 }

 private static int loc3x()
 {
 int loc3x = Config.loc3x;
 return loc3x;
 }

 private static int loc3y()
 {
 int loc3y = Config.loc3y;
 return loc3y;
 }

 private static int loc3z()
 {
 int loc3z = Config.loc3z;
 return loc3z;
 }

 private static int loc4x()
 {
 int loc4x = Config.loc4x;
 return loc4x;
 }

 private static int loc4y()
 {
 int loc4y = Config.loc4y;
 return loc4y;
 }

 private static int loc4z()
 {
 int loc4z = Config.loc4z;
 return loc4z;
 }

 private static int loc5x()
 {
 int loc5x = Config.loc5x;
 return loc5x;
 }

 private static int loc5y()
 {
 int loc5y = Config.loc5y;
 return loc5y;
 }

 private static int loc5z()
 {
 int loc5z = Config.loc5z;
 return loc5z;
 }

 private static int loc6x()
 {
 int loc6x = Config.loc6x;
 return loc6x;
 }

 private static int loc6y()
 {
 int loc6y = Config.loc6y;
 return loc6y;
 }

 private static int loc6z()
 {
 int loc6z = Config.loc6z;
 return loc6z;
 }

 private static int loc7x()
 {
 int loc7x = Config.loc7x;
 return loc7x;
 }

 private static int loc7y()
 {
 int loc7y = Config.loc7y;
 return loc7y;
 }

 private static int loc7z()
 {
 int loc7z = Config.loc7z;
 return loc7z;
 }

 private static int loc8x()
 {
 int loc8x = Config.loc8x;
 return loc8x;
 }

 private static int loc8y()
 {
 int loc8y = Config.loc8y;
 return loc8y;
 }

 private static int loc8z()
 {
 int loc8z = Config.loc8z;
 return loc8z;
 }

 private static int loc9x()
 {
 int loc9x = Config.loc9x;
 return loc9x;
 }

 private static int loc9y()
 {
 int loc9z = Config.loc9y;
 return loc9z;
 }

 private static int loc9z()
 {
 int loc9y = Config.loc9z;
 return loc9y;
 }

 private static int loc10x()
 {
 int loc1x = Config.loc10x;
 return loc1x;
 }

 private static int loc10y()
 {
 int loc10y = Config.loc10y;
 return loc10y;
 }

 private static int loc10z()
 {
 int loc10z = Config.loc10z;
 return loc10z;
 }
}