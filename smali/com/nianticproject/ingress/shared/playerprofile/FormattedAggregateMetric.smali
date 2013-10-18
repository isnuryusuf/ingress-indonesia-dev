.class public final Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final formattedValue30Days:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final formattedValue7Days:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final formattedValueAllTime:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final formattedValueNow:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final metricCategory:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final metricName:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->metricName:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->metricCategory:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValueAllTime:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValue30Days:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValue7Days:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValueNow:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->metricName:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->metricCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValueAllTime:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValue30Days:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValue7Days:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 134
    instance-of v1, p1, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;

    .line 139
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->metricName:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->metricName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->metricCategory:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->metricCategory:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValueAllTime:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValueAllTime:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValue30Days:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValue30Days:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValue7Days:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValue7Days:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValueNow:Ljava/lang/String;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValueNow:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValueNow:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->metricName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->metricCategory:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValueAllTime:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValue30Days:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValue7Days:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValueNow:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    const-string/jumbo v0, "metricName: %s, metricCategory: %s, formattedValueAllTime: %sformattedValue30Days: %sformattedValue7Days: %sformattedValueNow: %s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->metricName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->metricCategory:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValueAllTime:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValue30Days:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValue7Days:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->formattedValueNow:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
