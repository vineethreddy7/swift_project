//main.swift
import Foundation

var trust1: [trust] = []//array with type trust

var op: [options] = []//array with type options

op.append(options())

var names: [String] = []

var trustees1: [trustees] = []//array with type trustees

var i = 1

while true//loop to enter values
{
  print("Enter trust\(i) name")
  let name = readLine()!
  names.append(name)
  print("Enter trust\(i) founded year")
  let year = Int(readLine()!)!
  print("Enter trust\(i) funds")
  let fund = Double(readLine()!)!
  print("Is trust\(i) public or private")
  let type = readLine()!
  print("Enter total number of trustees in trust\(i); maximum is 3")
  let number = Int(readLine()!)!
  if number<4
  {
  for j in 0..<number
  {
    print("Enter trustee \(j+1) name for trust\(i)")
    let name1 = readLine()!
    print("Enter trustee \(j+1) age for trust\(i)")
    let age = Int(readLine()!)!
	print("Enter trustee \(j+1) phone for trust \(i)")
	let phone = Int(readLine()!)!
	trustees1.append(trustees(name: name1,age: age, phone: phone))
  }
}
  
  trust1.append(trust(name: name,founded_year: year,funds: fund,type1: type,trustees_count: number,trustees1: trustees1))//appending values to the array
  i=i+1

  print("0 to stop,1 to continue")
  if 0==Int(readLine()!)!
  {
    break
  }
}

var ch = 1

var choice = 0

var j: Int = 0


repeat
{//loop to repeat options
	op[0].options1()
	print("Enter choice")
	choice=Int(readLine()!)!
	switch choice
	{//case for first step
		case 1: repeat//public
				{
				op[0].options_public()
				print("Enter choice")
				switch Int(readLine()!)!
				{
					case 1: print("Enter the trust name you want to donate to")
							let i = op[0].search_trust(name: names)
							print("Enter amount")
							let am = Double(readLine()!)!
							trust1[i].funds+=am
							print("Updated amount is \(trust1[i].funds)")
							break
					case 2: print("Names of public trusts are")
							for i in 0..<trust1.count
							{
								if trust1[i].type1=="public"
								{
									print("\(trust1[i].name)")
								}
              
							}
							break
					case 3: print("Enter the trust name you want the donation from")
							let i = op[0].search_trust(name: names)
							print("Enter donation purpose")
							let purp=readLine()!
							print("Enter donation amount")
							let am = Double(readLine()!)!
							if am<trust1[i].funds
							{
							print("Amount \(am) is donated for \(purp)")
							trust1[i].funds-=am
							print("Updated amount is \(trust1[i].funds)")
							}
							else
							{
								print("Sufficient funds are not available")
							}
							break
					case 0: ch=0
							break
					default: print("Wrong choice")
				}
				}while ch==1
				ch=1
				break
		case 2: repeat//trust
				{
					op[0].options_trust()
					print("Enter choice")
					switch (Int(readLine()!)!)
					{
						case 1: print("The amount that can be donated from each are")
								print("Trust_name: Trust_amount")
								for i in 0..<trust1.count
								{
									print("\(trust1[i].name): \(trust1[i].funds)") 
								}
								break
						case 2: print("Least donated trust is")
								var less = 0.0
								for i in 1..<trust1.count
								{
									if trust1[i-1].funds>trust1[i].funds
									{
										less=trust1[i].funds
									}
                
								}
								for i in 0..<trust1.count
								{
									if trust1[i].funds==less
									{
										print("\(trust1[i].name)")
									}
								}
								break
						case 3: print("Most donated trust is")
								var max = 0.0
								for i in 1..<trust1.count
								{
									if trust1[i-1].funds>trust1[i].funds
									{
										max=trust1[i-1].funds
									}
								}
								for i in 0..<trust1.count
								{
									if trust1[i].funds==max
									{
										print("\(trust1[i].name)")
									}
								}
								break
						case 4: let i=op[0].search_trust(name: names)
								print("Name: \(trust1[i].name)\nFounded Year:\(trust1[i].founded_year)\nFunds:\(trust1[i].funds)\nType:\(trust1[i].type1)\nTrustees Count:\(trust1[i].trustees_count)\nTrustees:")
								for j in 0..<trust1[i].trustees1.count
								{
									print("\(trust1[i].trustees1[j].name)")
								}
								break
						case 0: ch=0
								    break
						default: print("Wrong choice")
					}
				}while ch==1
        ch=1
				break

		case 3: repeat//trustee
				{
					op[0].options_trustee()
					print("Enter choice")
					switch Int(readLine()!)!
					{
						case 1: let i=op[0].search_trust(name: names)
								print("Trustees for \(trust1[i].name) are")
								for j in 0..<trust1[i].trustees1.count
								{
									print("\(trust1[i].trustees1[j].name)")
								}
								break
						case 2: print("Details of each trustee are")
								let i = op[0].search_trust(name: names)
								for j in 0..<trust1[i].trustees1.count
								{
									print("Name: \(trust1[i].trustees1[j].name)")
                  print("Age :\(trust1[i].trustees1[j].age)")
                  print("Phone: \(trust1[i].trustees1[j].phone)")
								}
								break
						case 3: print("Enter name")
								for i in 0..<trust1.count
								{
									for j in 0..<trust1[i].trustees1.count
									{
										if readLine()!==trust1[i].trustees1[j].name
										{
											print("The trust they are working for is \(trust1[i].name)")
											break
										}
									}
								}
								break
						case 0: ch=0
								break
						default: print("Wrong choice")
					}
				}while ch==1
      ch=1
				break
  case 0: print("Exiting the system")//to exit the system
          ch=0
          break
	default: print("Wrong choice")
	}
	
}while ch==1






