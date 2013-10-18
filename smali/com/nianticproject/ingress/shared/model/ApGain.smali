.class public final Lcom/nianticproject/ingress/shared/model/ApGain;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final apGainAmount:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final apTrigger:Lcom/nianticproject/ingress/shared/model/a;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/ApGain;->apTrigger:Lcom/nianticproject/ingress/shared/model/a;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/model/ApGain;->apGainAmount:J

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/model/a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/ApGain;->apTrigger:Lcom/nianticproject/ingress/shared/model/a;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/nianticproject/ingress/shared/model/ApGain;->apGainAmount:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 53
    instance-of v1, p1, Lcom/nianticproject/ingress/shared/model/ApGain;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/model/ApGain;

    .line 57
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/model/ApGain;->apTrigger:Lcom/nianticproject/ingress/shared/model/a;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/model/ApGain;->apTrigger:Lcom/nianticproject/ingress/shared/model/a;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/nianticproject/ingress/shared/model/ApGain;->apGainAmount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lcom/nianticproject/ingress/shared/model/ApGain;->apGainAmount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/ApGain;->apTrigger:Lcom/nianticproject/ingress/shared/model/a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/model/ApGain;->apGainAmount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 68
    const-string/jumbo v0, "\'%s\':\'%d\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/model/ApGain;->apTrigger:Lcom/nianticproject/ingress/shared/model/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/nianticproject/ingress/shared/model/ApGain;->apGainAmount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
