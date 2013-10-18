.class public final Lcom/nianticproject/ingress/knobs/XmCostKnobs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/knobs/g;


# static fields
.field public static final a:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Lcom/nianticproject/ingress/knobs/XmCostKnobs;

.field private static final c:Lcom/google/a/c/du;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/du",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[I

.field private static final n:[I

.field private static final o:[I

.field private static final p:[I

.field private static final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flipCardCostByLevel:[I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private forceAmplifierDeployCostByLevel:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private heatsinkDeployCostByLevel:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private linkAmplifierDeployCostByLevel:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private multihackDeployCostByLevel:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private portalHackEnemyCostByLevel:[I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private portalHackFriendlyCostByLevel:[I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private portalHackNeutralCostByLevel:[I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private portalModByLevel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private resonatorDeployCostByLevel:[I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private resonatorUpgradeCostByLevel:[I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private shieldDeployCostByLevel:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private turretDeployCostByLevel:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private xmpFiringCostByLevel:[I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 33
    sget-object v0, Lcom/nianticproject/ingress/shared/af;->f:Lcom/nianticproject/ingress/shared/af;

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->e:Lcom/nianticproject/ingress/shared/af;

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->h:Lcom/nianticproject/ingress/shared/af;

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->d:Lcom/nianticproject/ingress/shared/af;

    sget-object v4, Lcom/nianticproject/ingress/shared/af;->l:Lcom/nianticproject/ingress/shared/af;

    sget-object v5, Lcom/nianticproject/ingress/shared/af;->k:Lcom/nianticproject/ingress/shared/af;

    new-array v6, v8, [Lcom/nianticproject/ingress/shared/af;

    invoke-static/range {v0 .. v6}, Lcom/google/a/c/du;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->c:Lcom/google/a/c/du;

    .line 41
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->d:[I

    .line 44
    new-array v0, v7, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->e:[I

    .line 47
    new-array v0, v7, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->f:[I

    .line 50
    new-array v0, v7, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->g:[I

    .line 53
    new-array v0, v7, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->h:[I

    .line 56
    new-array v0, v7, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->i:[I

    .line 59
    new-array v0, v7, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->j:[I

    .line 62
    new-array v0, v7, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->k:[I

    .line 65
    new-array v0, v7, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->l:[I

    .line 68
    new-array v0, v7, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->m:[I

    .line 71
    new-array v0, v7, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->n:[I

    .line 74
    new-array v0, v7, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->o:[I

    .line 77
    new-array v0, v7, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->p:[I

    .line 80
    new-array v0, v7, [Ljava/lang/Integer;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x1

    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x4b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x578

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x640

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->q:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/google/a/c/di;

    invoke-direct {v0}, Lcom/google/a/c/di;-><init>()V

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->k:Lcom/nianticproject/ingress/shared/af;

    sget-object v2, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->q:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->f:Lcom/nianticproject/ingress/shared/af;

    sget-object v2, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->q:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->d:Lcom/nianticproject/ingress/shared/af;

    sget-object v2, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->q:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->e:Lcom/nianticproject/ingress/shared/af;

    sget-object v2, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->q:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->h:Lcom/nianticproject/ingress/shared/af;

    sget-object v2, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->q:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->l:Lcom/nianticproject/ingress/shared/af;

    sget-object v2, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->q:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a:Lcom/google/a/c/dh;

    .line 94
    new-instance v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->b:Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    return-void

    .line 41
    :array_0
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    .line 44
    :array_1
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
        0x78t 0x5t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data

    .line 47
    :array_2
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
        0x78t 0x5t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data

    .line 50
    :array_3
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
        0x78t 0x5t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data

    .line 53
    :array_4
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
        0x78t 0x5t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data

    .line 56
    :array_5
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
        0x78t 0x5t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data

    .line 59
    :array_6
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
        0x78t 0x5t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data

    .line 62
    :array_7
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    .line 65
    :array_8
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    .line 68
    :array_9
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    .line 71
    :array_a
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    .line 74
    :array_b
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data

    .line 77
    :array_c
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
        0x58t 0x1bt 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a:Lcom/google/a/c/dh;

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalModByLevel:Ljava/util/Map;

    .line 194
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->d:[I

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->xmpFiringCostByLevel:[I

    .line 195
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->e:[I

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->shieldDeployCostByLevel:[I

    .line 196
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->k:[I

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorDeployCostByLevel:[I

    .line 197
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->l:[I

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorUpgradeCostByLevel:[I

    .line 198
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->m:[I

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackFriendlyCostByLevel:[I

    .line 199
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->n:[I

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackNeutralCostByLevel:[I

    .line 200
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->o:[I

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackEnemyCostByLevel:[I

    .line 201
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->p:[I

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->flipCardCostByLevel:[I

    .line 202
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->f:[I

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->linkAmplifierDeployCostByLevel:[I

    .line 203
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->g:[I

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->forceAmplifierDeployCostByLevel:[I

    .line 204
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->h:[I

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->heatsinkDeployCostByLevel:[I

    .line 205
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->i:[I

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->multihackDeployCostByLevel:[I

    .line 206
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->j:[I

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->turretDeployCostByLevel:[I

    .line 207
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a:Lcom/google/a/c/dh;

    iput-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalModByLevel:Ljava/util/Map;

    .line 209
    invoke-direct {p0}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a()V

    .line 210
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->xmpFiringCostByLevel:[I

    invoke-static {v0}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a([I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 215
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorDeployCostByLevel:[I

    invoke-static {v0}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a([I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 216
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorUpgradeCostByLevel:[I

    invoke-static {v0}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a([I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 217
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackFriendlyCostByLevel:[I

    invoke-static {v0}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a([I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 218
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackNeutralCostByLevel:[I

    invoke-static {v0}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a([I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 219
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackEnemyCostByLevel:[I

    invoke-static {v0}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a([I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 220
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->flipCardCostByLevel:[I

    invoke-static {v0}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a([I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 226
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalModByLevel:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/af;

    .line 227
    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalModByLevel:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 228
    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {v0}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a(Ljava/util/List;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    goto :goto_0

    .line 234
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->c:Lcom/google/a/c/du;

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/af;

    .line 235
    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalModByLevel:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    goto :goto_1

    .line 237
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/List;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 240
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_0

    move v0, v1

    .line 248
    :goto_0
    return v0

    :cond_0
    move v3, v2

    .line 243
    :goto_1
    if-gt v3, v4, :cond_2

    .line 244
    add-int/lit8 v0, v3, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    move v0, v1

    .line 245
    goto :goto_0

    .line 243
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 248
    goto :goto_0
.end method

.method private static a([I)Z
    .locals 3
    .parameter

    .prologue
    .line 252
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 253
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 254
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {v1}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I)I
    .locals 2
    .parameter

    .prologue
    .line 264
    if-lez p1, :cond_0

    const/16 v0, 0x8

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "level must be between AccessLevel\'s min and max"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->xmpFiringCostByLevel:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/shared/af;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 334
    if-lez p2, :cond_0

    const/16 v0, 0x8

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "level must be between AccessLevel\'s min and max"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalModByLevel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 338
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalModByLevel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)I
    .locals 2
    .parameter

    .prologue
    .line 274
    if-lez p1, :cond_0

    const/16 v0, 0x8

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "level must be between AccessLevel\'s min and max"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorDeployCostByLevel:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)I
    .locals 2
    .parameter

    .prologue
    .line 284
    if-lez p1, :cond_0

    const/16 v0, 0x8

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "level must be between AccessLevel\'s min and max"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorUpgradeCostByLevel:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)I
    .locals 2
    .parameter

    .prologue
    .line 294
    if-lez p1, :cond_0

    const/16 v0, 0x8

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "level must be between AccessLevel\'s min and max"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackFriendlyCostByLevel:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(I)I
    .locals 2
    .parameter

    .prologue
    .line 304
    if-lez p1, :cond_0

    const/16 v0, 0x8

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "level must be between AccessLevel\'s min and max"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackNeutralCostByLevel:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0

    .line 304
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 356
    if-ne p0, p1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v0

    .line 359
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 360
    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 363
    goto :goto_0

    .line 365
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    .line 366
    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackEnemyCostByLevel:[I

    iget-object v3, p1, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackEnemyCostByLevel:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackFriendlyCostByLevel:[I

    iget-object v3, p1, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackFriendlyCostByLevel:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackNeutralCostByLevel:[I

    iget-object v3, p1, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackNeutralCostByLevel:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorDeployCostByLevel:[I

    iget-object v3, p1, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorDeployCostByLevel:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorUpgradeCostByLevel:[I

    iget-object v3, p1, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorUpgradeCostByLevel:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->shieldDeployCostByLevel:[I

    iget-object v3, p1, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->shieldDeployCostByLevel:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->linkAmplifierDeployCostByLevel:[I

    iget-object v3, p1, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->linkAmplifierDeployCostByLevel:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->xmpFiringCostByLevel:[I

    iget-object v3, p1, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->xmpFiringCostByLevel:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->flipCardCostByLevel:[I

    iget-object v3, p1, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->flipCardCostByLevel:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final f(I)I
    .locals 2
    .parameter

    .prologue
    .line 314
    if-lez p1, :cond_0

    const/16 v0, 0x8

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "level must be between AccessLevel\'s min and max"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackEnemyCostByLevel:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0

    .line 314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(I)I
    .locals 2
    .parameter

    .prologue
    .line 325
    if-lez p1, :cond_0

    const/16 v0, 0x8

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "level must be between AccessLevel\'s min and max"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->flipCardCostByLevel:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0

    .line 325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 348
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackEnemyCostByLevel:[I

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackFriendlyCostByLevel:[I

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackNeutralCostByLevel:[I

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorDeployCostByLevel:[I

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorUpgradeCostByLevel:[I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->shieldDeployCostByLevel:[I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->linkAmplifierDeployCostByLevel:[I

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->xmpFiringCostByLevel:[I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->flipCardCostByLevel:[I

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 379
    const-string/jumbo v0, "xmpFiringCostByLevel: %s shieldDeployCostByLevel: %s linkAmplifierDeployCostByLevel: %s resonatorDeployCostByLevel: %s resonatorUpgradeCostByLevel: %s portalHackFriendlyCostByLevel: %s portalHackNeutralCostByLevel: %s portalHackEnemyCostByLevel: %s flipCardCostByLevel: %s"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->xmpFiringCostByLevel:[I

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->shieldDeployCostByLevel:[I

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->linkAmplifierDeployCostByLevel:[I

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorDeployCostByLevel:[I

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->resonatorUpgradeCostByLevel:[I

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackFriendlyCostByLevel:[I

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackNeutralCostByLevel:[I

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->portalHackEnemyCostByLevel:[I

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->flipCardCostByLevel:[I

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
