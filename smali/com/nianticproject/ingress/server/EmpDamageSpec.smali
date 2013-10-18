.class public final Lcom/nianticproject/ingress/server/EmpDamageSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final criticalHitChance:F
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final damageSpread:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final minDamage:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/nianticproject/ingress/server/EmpDamageSpec;->minDamage:I

    .line 55
    iput v0, p0, Lcom/nianticproject/ingress/server/EmpDamageSpec;->damageSpread:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/server/EmpDamageSpec;->criticalHitChance:F

    .line 57
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-le p2, p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 45
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 46
    const/high16 v0, 0x3f80

    cmpg-float v0, p3, v0

    if-gez v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 47
    iput p1, p0, Lcom/nianticproject/ingress/server/EmpDamageSpec;->minDamage:I

    .line 48
    sub-int v0, p2, p1

    iput v0, p0, Lcom/nianticproject/ingress/server/EmpDamageSpec;->damageSpread:I

    .line 49
    iput p3, p0, Lcom/nianticproject/ingress/server/EmpDamageSpec;->criticalHitChance:F

    .line 50
    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0

    :cond_1
    move v0, v2

    .line 45
    goto :goto_1

    :cond_2
    move v1, v2

    .line 46
    goto :goto_2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    const-string/jumbo v0, "minDamage: %s, damageSpread: %s, criticalHitChance: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nianticproject/ingress/server/EmpDamageSpec;->minDamage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/nianticproject/ingress/server/EmpDamageSpec;->damageSpread:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/nianticproject/ingress/server/EmpDamageSpec;->criticalHitChance:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
