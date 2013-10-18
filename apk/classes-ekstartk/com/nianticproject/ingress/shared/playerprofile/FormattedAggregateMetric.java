package com.nianticproject.ingress.shared.playerprofile;

import com.google.a.a.ag;
import org.codehaus.jackson.annotate.JsonProperty;

public final class FormattedAggregateMetric
{

  @JsonProperty
  private final String formattedValue30Days = null;

  @JsonProperty
  private final String formattedValue7Days = null;

  @JsonProperty
  private final String formattedValueAllTime = null;

  @JsonProperty
  private final String formattedValueNow = null;

  @JsonProperty
  private final String metricCategory = null;

  @JsonProperty
  private final String metricName = null;

  public final String a()
  {
    return this.metricName;
  }

  public final String b()
  {
    return this.metricCategory;
  }

  public final String c()
  {
    return this.formattedValueAllTime;
  }

  public final String d()
  {
    return this.formattedValue30Days;
  }

  public final String e()
  {
    return this.formattedValue7Days;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof FormattedAggregateMetric));
    FormattedAggregateMetric localFormattedAggregateMetric;
    do
    {
      return false;
      localFormattedAggregateMetric = (FormattedAggregateMetric)paramObject;
    }
    while ((!ag.a(this.metricName, localFormattedAggregateMetric.metricName)) || (!ag.a(this.metricCategory, localFormattedAggregateMetric.metricCategory)) || (!ag.a(this.formattedValueAllTime, localFormattedAggregateMetric.formattedValueAllTime)) || (!ag.a(this.formattedValue30Days, localFormattedAggregateMetric.formattedValue30Days)) || (!ag.a(this.formattedValue7Days, localFormattedAggregateMetric.formattedValue7Days)) || (!ag.a(this.formattedValueNow, localFormattedAggregateMetric.formattedValueNow)));
    return true;
  }

  public final String f()
  {
    return this.formattedValueNow;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = this.metricName;
    arrayOfObject[1] = this.metricCategory;
    arrayOfObject[2] = this.formattedValueAllTime;
    arrayOfObject[3] = this.formattedValue30Days;
    arrayOfObject[4] = this.formattedValue7Days;
    arrayOfObject[5] = this.formattedValueNow;
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = this.metricName;
    arrayOfObject[1] = this.metricCategory;
    arrayOfObject[2] = this.formattedValueAllTime;
    arrayOfObject[3] = this.formattedValue30Days;
    arrayOfObject[4] = this.formattedValue7Days;
    arrayOfObject[5] = this.formattedValueNow;
    return String.format("metricName: %s, metricCategory: %s, formattedValueAllTime: %sformattedValue30Days: %sformattedValue7Days: %sformattedValueNow: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.playerprofile.FormattedAggregateMetric
 * JD-Core Version:    0.6.2
 */