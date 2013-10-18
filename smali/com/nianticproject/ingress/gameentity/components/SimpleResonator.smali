.class public final Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/Resonator;
.implements Lcom/nianticproject/ingress/shared/s;


# static fields
.field public static final energyTankVolume:[I


# instance fields
.field private transient containingEntity:Lcom/nianticproject/ingress/gameentity/f;

.field private transient dirty:Z

.field private linkedPortalGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final newResonatorLevel:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final ownerId:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->energyTankVolume:[I

    return-void

    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xc4t 0x9t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->newResonatorLevel:I

    .line 115
    const-string/jumbo v0, "dummy"

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->ownerId:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/nianticproject/ingress/gameentity/components/a;->a(I)Z

    move-result v0

    const-string/jumbo v1, "level must be within Levels.MIN_LEVEL and Levels.MAX_LEVEL"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 50
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->newResonatorLevel:I

    .line 51
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->ownerId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->linkedPortalGuid:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->dirty:Z

    .line 54
    return-void
.end method


# virtual methods
.method public final getEnergyCapacity()I
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->energyTankVolume:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->getLevel()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getEntity()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public final getEntityGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLevel()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->newResonatorLevel:I

    return v0
.end method

.method public final getLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->getLevel()I

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLinkedPortalGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->linkedPortalGuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public final hasLinkedPortal()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->linkedPortalGuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDirty()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->dirty:Z

    return v0
.end method

.method public final linkPortal(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string/jumbo v3, "can\'t call linkPortal() with null or empty portal."

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->hasLinkedPortal()Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    const-string/jumbo v0, "can\'t link a beacon which is already linked."

    invoke-static {v2, v0}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->linkedPortalGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->linkedPortalGuid:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->dirty:Z

    .line 88
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 81
    goto :goto_0
.end method

.method public final setClean()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->dirty:Z

    .line 98
    return-void
.end method

.method public final setEntity(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-static {v0, p0, v1, p1}, Lcom/nianticproject/ingress/gameentity/e;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/a;Ljava/lang/Class;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 122
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    const-string/jumbo v1, "level: \'%d\', linkedPortalGuid: \'%s\', ownerGuid: \'%s\', %s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->newResonatorLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->linkedPortalGuid:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->ownerId:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleResonator;->dirty:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " [dirty]"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
