package org.xtext.example.mydsl.generator
import java.util.ArrayList;

interface ITask {
	def void setName(String name);
	def String getName();
	def void setDescription(String description);
	def String getDescription();
	def void setRequirements(ArrayList<ICapability>requiredCapabilities);
	def ArrayList<ICapability> getRequirements();
}