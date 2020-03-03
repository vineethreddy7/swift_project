//trust.swift
import Foundation

class trust//creating class trust
{
	var name: String
	var founded_year: Int
	var funds: Double
	var type1: String
	var trustees_count: Int
	var trustees1: [trustees] = []
	
	//the constructor or initializer
	init(name: String,founded_year: Int,funds: Double,type1: String,trustees_count: Int,trustees1: [trustees])
	{
		self.name = name
		self.founded_year = founded_year
		self.funds = funds
		self.type1 = type1
		self.trustees_count = trustees_count
		self.trustees1 = trustees1
	}
	
	
}