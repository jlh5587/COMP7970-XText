package org.xtext.example.mydsl.generator;

import java.util.ArrayList;
import org.xtext.example.mydsl.generator.IAgent;
import org.xtext.example.mydsl.generator.ITask;

@SuppressWarnings("all")
public interface ICoalition {
  public abstract void setLeader(final IAgent leader);
  
  public abstract IAgent getLeader();
  
  public abstract IAgent electLeader(final Object... objects);
  
  public abstract void setAgents(final ArrayList<IAgent> members);
  
  public abstract ArrayList<IAgent> getAgents();
  
  public abstract boolean addSingleAgent(final IAgent agent);
  
  public abstract ArrayList<IAgent> formCoalition(final Object... objects);
  
  public abstract void setTasks(final ArrayList<ITask> tasks);
  
  public abstract ArrayList<ITask> getTasks();
  
  public abstract boolean addSingleTask(final ITask task);
  
  public abstract Object performTasks(final Object... objects);
}
