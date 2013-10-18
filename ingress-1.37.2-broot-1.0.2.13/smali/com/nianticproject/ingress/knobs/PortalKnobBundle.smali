.class public final Lcom/nianticproject/ingress/knobs/PortalKnobBundle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/knobs/g;


# static fields
.field public static final a:Lcom/nianticproject/ingress/shared/ResonatorLimits;


# instance fields
.field private final canPlayerRemoveMod:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final maxModsPerPlayer:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final resonatorLimits:Lcom/nianticproject/ingress/shared/ResonatorLimits;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    .line 32
    new-instance v0, Lcom/nianticproject/ingress/shared/ResonatorLimits;

    new-array v1, v8, [Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    const/4 v2, 0x0

    new-instance v3, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;-><init>(ILjava/lang/Integer;)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;-><init>(ILjava/lang/Integer;)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;-><init>(ILjava/lang/Integer;)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;-><init>(ILjava/lang/Integer;)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;-><init>(ILjava/lang/Integer;)V

    aput-object v2, v1, v5

    const/4 v2, 0x5

    new-instance v3, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;-><init>(ILjava/lang/Integer;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;-><init>(ILjava/lang/Integer;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/nianticproject/ingress/shared/ResonatorLevelBand;-><init>(ILjava/lang/Integer;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/a/c/jc;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/ResonatorLimits;-><init>(Ljava/util/Set;)V

    sput-object v0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->a:Lcom/nianticproject/ingress/shared/ResonatorLimits;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->a:Lcom/nianticproject/ingress/shared/ResonatorLimits;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;-><init>(Lcom/nianticproject/ingress/shared/ResonatorLimits;)V

    .line 67
    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/shared/ResonatorLimits;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->resonatorLimits:Lcom/nianticproject/ingress/shared/ResonatorLimits;

    .line 73
    iput v3, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->maxModsPerPlayer:I

    .line 74
    iput-boolean v2, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->canPlayerRemoveMod:Z

    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->resonatorLimits:Lcom/nianticproject/ingress/shared/ResonatorLimits;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/ResonatorLimits;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    iget v0, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->maxModsPerPlayer:I

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    iget v0, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->maxModsPerPlayer:I

    if-gt v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->b(Z)V

    .line 76
    return-void

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/ResonatorLimits;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->resonatorLimits:Lcom/nianticproject/ingress/shared/ResonatorLimits;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->maxModsPerPlayer:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 104
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    .line 108
    iget-object v1, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->resonatorLimits:Lcom/nianticproject/ingress/shared/ResonatorLimits;

    iget-object v2, p1, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->resonatorLimits:Lcom/nianticproject/ingress/shared/ResonatorLimits;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->maxModsPerPlayer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->maxModsPerPlayer:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->canPlayerRemoveMod:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->canPlayerRemoveMod:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->resonatorLimits:Lcom/nianticproject/ingress/shared/ResonatorLimits;

    aput-object v2, v0, v1

## Change to 2
    const/4 v1, 0x1

    iget v2, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->maxModsPerPlayer:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->canPlayerRemoveMod:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    invoke-static {p0}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "resonatorLimits"

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->resonatorLimits:Lcom/nianticproject/ingress/shared/ResonatorLimits;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "maxModsPerPlayer"

    iget v2, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->maxModsPerPlayer:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;I)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "canPlayerRemoveMod"

    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->canPlayerRemoveMod:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Z)Lcom/google/a/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
