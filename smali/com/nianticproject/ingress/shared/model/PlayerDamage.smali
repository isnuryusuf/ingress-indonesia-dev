.class public final Lcom/nianticproject/ingress/shared/model/PlayerDamage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final attackerGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final damageAmount:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final weaponSerializationTag:Lcom/nianticproject/ingress/gameentity/JsonConstants$SerializationTag;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->damageAmount:J

    .line 49
    iput-object v2, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->attackerGuid:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->weaponSerializationTag:Lcom/nianticproject/ingress/gameentity/JsonConstants$SerializationTag;

    .line 51
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/nianticproject/ingress/gameentity/JsonConstants$SerializationTag;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Damage amount can not be negative."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 56
    const-string/jumbo v0, "Attacker guid can not be null."

    invoke-static {p3, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v0, "Type of attack must be specified."

    invoke-static {p4, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {p4}, Lcom/nianticproject/ingress/gameentity/JsonConstants$SerializationTag;->getComponentClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Weapon;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string/jumbo v1, "Serialization tag must be for Component that extends from Weapons component."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 60
    iput-wide p1, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->damageAmount:J

    .line 61
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->attackerGuid:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->weaponSerializationTag:Lcom/nianticproject/ingress/gameentity/JsonConstants$SerializationTag;

    .line 63
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->damageAmount:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->attackerGuid:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 89
    goto :goto_0

    .line 92
    :cond_2
    instance-of v2, p1, Lcom/nianticproject/ingress/shared/model/PlayerDamage;

    if-nez v2, :cond_3

    move v0, v1

    .line 93
    goto :goto_0

    .line 96
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/shared/model/PlayerDamage;

    .line 97
    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->damageAmount:J

    iget-wide v4, p1, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->damageAmount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->attackerGuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->attackerGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->weaponSerializationTag:Lcom/nianticproject/ingress/gameentity/JsonConstants$SerializationTag;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->weaponSerializationTag:Lcom/nianticproject/ingress/gameentity/JsonConstants$SerializationTag;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->damageAmount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->attackerGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->weaponSerializationTag:Lcom/nianticproject/ingress/gameentity/JsonConstants$SerializationTag;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 108
    const-string/jumbo v0, "damageAmount: %d, attackerGuid: %s, weaponSerializationTag: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->damageAmount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->attackerGuid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/model/PlayerDamage;->weaponSerializationTag:Lcom/nianticproject/ingress/gameentity/JsonConstants$SerializationTag;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
