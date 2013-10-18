import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class U
{
  public static final U a;
  public static final List a;
  public static final Map a;
  public final String a;
  public final String b;
  public final String c;

  static
  {
    int i = 0;
    jdField_a_of_type_U = new U("auto", "Auto");
    ArrayList localArrayList1 = new ArrayList(Arrays.asList(H.a));
    ArrayList localArrayList2 = new ArrayList(1 + localArrayList1.size());
    jdField_a_of_type_JavaUtilList = localArrayList2;
    localArrayList2.add(jdField_a_of_type_U);
    U[] arrayOfU = new U[7];
    arrayOfU[0] = new U("data-xxhdpi", "Original xxhdpi", "data-xhdpi");
    arrayOfU[1] = new U("data-xhdpi", "Original xhdpi", "data");
    arrayOfU[2] = new U("data", "Original normal");
    arrayOfU[3] = new U("data-hvga", "Mod HVGA");
    arrayOfU[4] = new U("data-qvga", "Mod QVGA");
    arrayOfU[5] = new U("data-ingressopt-hvga", "Ingressopt HVGA");
    arrayOfU[6] = new U("data-ingressopt-qvga", "Ingressopt QVGA");
    int j = arrayOfU.length;
    while (i < j)
    {
      U localU2 = arrayOfU[i];
      if (localArrayList1.remove(localU2.jdField_a_of_type_JavaLangString))
        jdField_a_of_type_JavaUtilList.add(localU2);
      i++;
    }
    Collections.sort(localArrayList1);
    Iterator localIterator1 = localArrayList1.iterator();
    while (localIterator1.hasNext())
    {
      String str = (String)localIterator1.next();
      jdField_a_of_type_JavaUtilList.add(new U(str, "Custom " + str));
    }
    jdField_a_of_type_JavaUtilMap = new HashMap(jdField_a_of_type_JavaUtilList.size());
    Iterator localIterator2 = jdField_a_of_type_JavaUtilList.iterator();
    while (localIterator2.hasNext())
    {
      U localU1 = (U)localIterator2.next();
      jdField_a_of_type_JavaUtilMap.put(localU1.jdField_a_of_type_JavaLangString, localU1);
    }
  }

  private U(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null);
  }

  private U(String paramString1, String paramString2, String paramString3)
  {
    this.jdField_a_of_type_JavaLangString = paramString1;
    this.b = paramString2;
    this.c = paramString3;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    U localU;
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
        return false;
      localU = (U)paramObject;
    }
    while (this.jdField_a_of_type_JavaLangString.equals(localU.jdField_a_of_type_JavaLangString));
    return false;
  }

  public final int hashCode()
  {
    return this.jdField_a_of_type_JavaLangString.hashCode();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     U
 * JD-Core Version:    0.6.2
 */