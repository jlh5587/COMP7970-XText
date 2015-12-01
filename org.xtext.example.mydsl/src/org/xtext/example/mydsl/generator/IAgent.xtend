package org.xtext.example.mydsl.generator
import java.util.ArrayList;

interface IAgent {
	def void setCapabilities(ArrayList<ICapability> capabilities);
	def ArrayList<ICapability> getCapabilities();
	def boolean addSingleCapability(ICapability capability);
	def void setCoalitions(ArrayList<ICoalition> coalitions);
	def ArrayList<ICoalition> getCoalitions();
	def boolean addSingleCoalition(ICoalition coalition);
}