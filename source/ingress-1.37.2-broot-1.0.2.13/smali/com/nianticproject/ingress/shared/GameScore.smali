.class public final Lcom/nianticproject/ingress/shared/GameScore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final alienScore:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final resistanceScore:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/GameScore;->alienScore:J

    .line 75
    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/GameScore;->resistanceScore:J

    .line 76
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/nianticproject/ingress/shared/GameScore;->alienScore:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/nianticproject/ingress/shared/GameScore;->resistanceScore:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p0, p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    instance-of v2, p1, Lcom/nianticproject/ingress/shared/GameScore;

    if-nez v2, :cond_2

    move v0, v1

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    check-cast p1, Lcom/nianticproject/ingress/shared/GameScore;

    .line 68
    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/GameScore;->alienScore:J

    iget-wide v4, p1, Lcom/nianticproject/ingress/shared/GameScore;->alienScore:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/GameScore;->resistanceScore:J

    iget-wide v4, p1, Lcom/nianticproject/ingress/shared/GameScore;->resistanceScore:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/GameScore;->alienScore:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/GameScore;->resistanceScore:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "aliens: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/nianticproject/ingress/shared/GameScore;->alienScore:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", resistance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/nianticproject/ingress/shared/GameScore;->resistanceScore:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
