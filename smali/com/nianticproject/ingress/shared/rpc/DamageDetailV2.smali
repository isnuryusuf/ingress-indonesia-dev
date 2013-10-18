.class public final Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final criticalHit:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final damageAmount:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final responsibleGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final targetDestroyed:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final targetGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private targetSlot:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->responsibleGuid:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetGuid:Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetSlot:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->damageAmount:J

    .line 82
    iput-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->criticalHit:Z

    .line 83
    iput-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetDestroyed:Z

    .line 84
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    if-ne p0, p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    instance-of v2, p1, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;

    if-nez v2, :cond_2

    move v0, v1

    .line 140
    goto :goto_0

    .line 143
    :cond_2
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;

    .line 145
    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->damageAmount:J

    iget-wide v4, p1, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->damageAmount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->criticalHit:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->criticalHit:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetDestroyed:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetDestroyed:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetSlot:I

    iget v3, p1, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetSlot:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->responsibleGuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->responsibleGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetGuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 155
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->responsibleGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetSlot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->damageAmount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->criticalHit:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetDestroyed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 165
    const-string/jumbo v0, "responsibleGuid: %s, targetGuid: %s, targetSlot: %d, damageAmount: %d, critical: %s, destroyed: %s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->responsibleGuid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetGuid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetSlot:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->damageAmount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->criticalHit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/nianticproject/ingress/shared/rpc/DamageDetailV2;->targetDestroyed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
