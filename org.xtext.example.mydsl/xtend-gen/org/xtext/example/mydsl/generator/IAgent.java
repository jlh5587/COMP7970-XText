package org.xtext.example.mydsl.generator;

import java.util.ArrayList;
import org.xtext.example.mydsl.generator.ICapability;
import org.xtext.example.mydsl.generator.ICoalition;

@SuppressWarnings("all")
public interface IAgent {
  public abstract void setCapabilities(final ArrayList<ICapability> capabilities);
  
  public abstract ArrayList<ICapability> getCapabilities();
  
  public abstract boolean addSingleCapability(final ICapability capability);
  
  public abstract void setCoalitions(final ArrayList<ICoalition> coalitions);
  
  public abstract ArrayList<ICoalition> getCoalitions();
  
  public abstract boolean addSingleCoalition(final ICoalition coalition);
}
