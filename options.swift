//options.swift
import Foundation

class options//creating class options
{
	func options1()//options at first step
	{
		print("\n1.Public\n2.Trust\n3.Trustee\n0.Exit")
	}

  func options_public()//first options in the first step
  {
    print("\n1.Donate to the trust\n2.Print details of public trusts\n3.Request for donation\n0.Exit")
  }
  func options_trust()//second option
  {
	print("\n1.Display amount to be donated\n2.Least donated trust\n3.Most donated trust\n4.View trust details\n0.Exit")
  }
  func options_trustee()//third option
  {
	print("\n1.Display names of all trustees of the trust\n2.Display details of trustee\n3.Display their respective trusts\n0.Exit")
  }

  func search_trust(name: [String])->Int//function to search trust
	{
		print("Enter trust name")
		for i in 0..<name.count
		{
			if name[i]==readLine()!
			{
				return i
			}
		}
		return 0
	}

}

