.class public final Lcom/nianticproject/ingress/shared/model/DamageDetail;
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

.field private final resonatorId:Ljava/lang/String;
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

.field private final targetSlot:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->responsibleGuid:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetGuid:Ljava/lang/String;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->damageAmount:J

    .line 81
    iput-boolean v3, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->criticalHit:Z

    .line 82
    iput-boolean v3, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetDestroyed:Z

    .line 83
    const/4 v0, -0x2

    iput v0, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetSlot:I

    .line 84
    iput-object v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->resonatorId:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x3e8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-ltz v0, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Damage amount can not be negative."

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 90
    const-string/jumbo v0, "Responsible guid can not be null."

    invoke-static {p1, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v0, "Target guid can not be null."

    invoke-static {p2, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/4 v0, -0x1

    if-lt p3, v0, :cond_0

    move v2, v1

    :cond_0
    const-string/jumbo v0, "Target slot cannot be < -1"

    invoke-static {v2, v0}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 93
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->responsibleGuid:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetGuid:Ljava/lang/String;

    .line 95
    iput-wide v5, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->damageAmount:J

    .line 96
    iput-boolean v1, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->criticalHit:Z

    .line 97
    iput-boolean v1, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetDestroyed:Z

    .line 98
    iput p3, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetSlot:I

    .line 99
    iput-object p4, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->resonatorId:Ljava/lang/String;

    .line 100
    return-void

    :cond_1
    move v0, v2

    .line 89
    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->damageAmount:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetGuid:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->criticalHit:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetDestroyed:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->resonatorId:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    if-ne p0, p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    instance-of v2, p1, Lcom/nianticproject/ingress/shared/model/DamageDetail;

    if-nez v2, :cond_2

    move v0, v1

    .line 147
    goto :goto_0

    .line 150
    :cond_2
    check-cast p1, Lcom/nianticproject/ingress/shared/model/DamageDetail;

    .line 152
    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->damageAmount:J

    iget-wide v4, p1, Lcom/nianticproject/ingress/shared/model/DamageDetail;->damageAmount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->criticalHit:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/shared/model/DamageDetail;->criticalHit:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetDestroyed:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetDestroyed:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->responsibleGuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/model/DamageDetail;->responsibleGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetGuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetSlot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetSlot:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->resonatorId:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/model/DamageDetail;->resonatorId:Ljava/lang/String;

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
    .line 163
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->responsibleGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->damageAmount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->criticalHit:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetDestroyed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetSlot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->resonatorId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 169
    const-string/jumbo v0, "responsibleGuid: %s, targetGuid: %s, damageAmount: %d, critical: %s, destroyed: %s, slot: %s, resonatorId: %s"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->responsibleGuid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetGuid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->damageAmount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->criticalHit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetDestroyed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->targetSlot:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/model/DamageDetail;->resonatorId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
