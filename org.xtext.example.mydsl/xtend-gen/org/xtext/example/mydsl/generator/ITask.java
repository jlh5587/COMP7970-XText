package org.xtext.example.mydsl.generator;

import java.util.ArrayList;
import org.xtext.example.mydsl.generator.ICapability;

@SuppressWarnings("all")
public interface ITask {
  public abstract void setName(final String name);
  
  public abstract String getName();
  
  public abstract void setDescription(final String description);
  
  public abstract String getDescription();
  
  public abstract void setRequirements(final ArrayList<ICapability> requiredCapabilities);
  
  public abstract ArrayList<ICapability> getRequirements();
}
