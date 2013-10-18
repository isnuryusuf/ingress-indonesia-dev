.class public Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;


# instance fields
.field private ammo:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final level:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;->level:I

    .line 85
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/nianticproject/ingress/gameentity/components/a;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 37
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;->level:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;->ammo:I

    .line 39
    return-void
.end method


# virtual methods
.method public canBeFired()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;->ammo:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAverageRange(Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;)Ljava/lang/Float;
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;->b()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAmmo()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;->ammo:I

    return v0
.end method

.method public getDamageSpec(Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;)Lcom/nianticproject/ingress/server/EmpDamageSpec;
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-virtual {p1, p0}, Lcom/nianticproject/ingress/server/EmpWeaponDamageKnobBundle;->b(Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;)Lcom/nianticproject/ingress/server/EmpDamageSpec;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;->level:I

    return v0
.end method

.method public getMaxRange(Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1, p0}, Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;->b(Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public spendAmmo()V
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;->ammo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;->ammo:I

    .line 49
    return-void
.end method

.method public toBeDestroyed()Z
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;->ammo:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    const-string/jumbo v0, "level: %s, ammo: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleEmpWeapon;->ammo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
