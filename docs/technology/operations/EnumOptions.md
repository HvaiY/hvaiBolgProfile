## 利用位计算合并枚举值，规律计算
 - Flags 特性已实现，这个计较一种实现
``` cs
void Main()
{
	var enums = new[] {EnumDemo.A,EnumDemo.C};
	var result=0;
	for (int i = 0; i < enums.Length; i++)
	{
	  var temp= Convert.ToInt32(enums[i]);
	 result= result|temp;
	}
     Console.WriteLine("计算合并结果:"+result);
   //Console.WriteLine(Convert.ToString(result,2) );
     Console.WriteLine("------------------------------");
	var eValues = Enum.GetNames(typeof(EnumDemo));
	
	
	var arr = new List<EnumDemo>();
     foreach (var e in eValues)
     {
	  var enumt=(EnumDemo)Enum.Parse(typeof(EnumDemo),e);
	  var tempE= Convert.ToInt32(enumt);
		//0000 1101
		//0000 0100  c 

		if ((result & tempE) != 0) {
		  arr.Add(enumt);
		}
     }

   Console.WriteLine("计算拆分枚举");
   Console.WriteLine(arr);
}

[Flags]  // 本身实现合并计算
public enum EnumDemo{ 
	A=1, // 0000 0001
	B=2, // 0000 0010
	C=4, // 0000 0100
	D=8, // 0000 1000
	E=16  // 0001 0000
}

// Define other methods, classes and namespaces here

 
```