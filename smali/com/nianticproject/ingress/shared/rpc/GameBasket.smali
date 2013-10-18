.class public Lcom/nianticproject/ingress/shared/rpc/GameBasket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/a/a/ab;

.field private static final b:Lcom/google/a/a/ab;


# instance fields
.field private final apGains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/model/ApGain;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final c:Lcom/google/a/a/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/aa",
            "<",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deletedEntityGuids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final energyGlobGuids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final energyGlobTimestamp:Ljava/lang/Long;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final gameEntities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final inventory:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final knobBundleUpdate:Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final levelUp:Lcom/nianticproject/ingress/shared/model/LevelUp;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final playerDamages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/model/PlayerDamage;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final playerEntity:Lcom/nianticproject/ingress/gameentity/f;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final refreshEntityGuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "\n    "

    invoke-static {v0}, Lcom/google/a/a/ab;->a(Ljava/lang/String;)Lcom/google/a/a/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/ab;->a()Lcom/google/a/a/ab;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->a:Lcom/google/a/a/ab;

    .line 59
    const-string/jumbo v0, " "

    invoke-static {v0}, Lcom/google/a/a/ab;->a(Ljava/lang/String;)Lcom/google/a/a/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/ab;->a()Lcom/google/a/a/ab;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->b:Lcom/google/a/a/ab;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/d;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/shared/rpc/d;-><init>(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c:Lcom/google/a/a/aa;

    .line 214
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->playerDamages:Ljava/util/Set;

    .line 215
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->gameEntities:Ljava/util/Set;

    .line 216
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->apGains:Ljava/util/List;

    .line 217
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->levelUp:Lcom/nianticproject/ingress/shared/model/LevelUp;

    .line 218
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 219
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->inventory:Ljava/util/Set;

    .line 220
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->deletedEntityGuids:Ljava/util/Set;

    .line 221
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->energyGlobGuids:Ljava/util/Set;

    .line 222
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->energyGlobTimestamp:Ljava/lang/Long;

    .line 223
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->knobBundleUpdate:Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    .line 224
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->refreshEntityGuids:Ljava/util/List;

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/List;Lcom/nianticproject/ingress/shared/model/LevelUp;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/Long;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/model/PlayerDamage;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/model/ApGain;",
            ">;",
            "Lcom/nianticproject/ingress/shared/model/LevelUp;",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/d;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/shared/rpc/d;-><init>(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c:Lcom/google/a/a/aa;

    .line 137
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->playerDamages:Ljava/util/Set;

    .line 138
    if-nez p4, :cond_0

    .line 139
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->gameEntities:Ljava/util/Set;

    .line 143
    :goto_0
    iput-object p9, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 144
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->apGains:Ljava/util/List;

    .line 145
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->levelUp:Lcom/nianticproject/ingress/shared/model/LevelUp;

    .line 146
    iput-object p5, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->inventory:Ljava/util/Set;

    .line 147
    if-nez p6, :cond_1

    .line 148
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->deletedEntityGuids:Ljava/util/Set;

    .line 152
    :goto_1
    iput-object p7, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->energyGlobGuids:Ljava/util/Set;

    .line 153
    iput-object p8, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->energyGlobTimestamp:Ljava/lang/Long;

    .line 154
    iput-object p10, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->knobBundleUpdate:Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    .line 155
    iput-object p11, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->refreshEntityGuids:Ljava/util/List;

    .line 156
    return-void

    .line 141
    :cond_0
    iput-object p4, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->gameEntities:Ljava/util/Set;

    goto :goto_0

    .line 150
    :cond_1
    iput-object p6, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->deletedEntityGuids:Ljava/util/Set;

    goto :goto_1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->playerDamages:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/model/LevelUp;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->levelUp:Lcom/nianticproject/ingress/shared/model/LevelUp;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->apGains:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->gameEntities:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->inventory:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->deletedEntityGuids:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->energyGlobGuids:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->energyGlobTimestamp:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->apGains:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->apGains:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->knobBundleUpdate:Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->b()Lcom/nianticproject/ingress/shared/rpc/e;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_4

    .line 173
    iget-object v2, v1, Lcom/nianticproject/ingress/shared/rpc/e;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v2, v2, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->apGains:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/nianticproject/ingress/shared/rpc/e;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v2, v2, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->apGains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 176
    :cond_2
    iget-object v2, v1, Lcom/nianticproject/ingress/shared/rpc/e;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v2, v2, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->levelUp:Lcom/nianticproject/ingress/shared/model/LevelUp;

    if-nez v2, :cond_0

    .line 179
    iget-object v2, v1, Lcom/nianticproject/ingress/shared/rpc/e;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v2, v2, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->playerDamages:Ljava/util/Set;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/nianticproject/ingress/shared/rpc/e;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v2, v2, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->playerDamages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 182
    :cond_3
    iget-object v1, v1, Lcom/nianticproject/ingress/shared/rpc/e;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v1, v1, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    if-nez v1, :cond_0

    .line 188
    :cond_4
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c()Lcom/nianticproject/ingress/shared/rpc/f;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_8

    .line 190
    iget-object v2, v1, Lcom/nianticproject/ingress/shared/rpc/f;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v2, v2, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->deletedEntityGuids:Ljava/util/Set;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/nianticproject/ingress/shared/rpc/f;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v2, v2, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->deletedEntityGuids:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 194
    :cond_5
    iget-object v2, v1, Lcom/nianticproject/ingress/shared/rpc/f;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v2, v2, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->energyGlobGuids:Ljava/util/Set;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/nianticproject/ingress/shared/rpc/f;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v2, v2, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->energyGlobGuids:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 197
    :cond_6
    iget-object v2, v1, Lcom/nianticproject/ingress/shared/rpc/f;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v2, v2, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->energyGlobTimestamp:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 200
    iget-object v2, v1, Lcom/nianticproject/ingress/shared/rpc/f;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v2, v2, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->gameEntities:Ljava/util/Set;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/nianticproject/ingress/shared/rpc/f;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v2, v2, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->gameEntities:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 203
    :cond_7
    iget-object v2, v1, Lcom/nianticproject/ingress/shared/rpc/f;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v2, v2, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->inventory:Ljava/util/Set;

    if-eqz v2, :cond_8

    iget-object v1, v1, Lcom/nianticproject/ingress/shared/rpc/f;->a:Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    iget-object v1, v1, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->inventory:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 208
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final b()Lcom/nianticproject/ingress/shared/rpc/e;
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/e;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/shared/rpc/e;-><init>(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    return-object v0
.end method

.method public final c()Lcom/nianticproject/ingress/shared/rpc/f;
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/f;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/shared/rpc/f;-><init>(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    return-object v0
.end method

.method public final d()Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->knobBundleUpdate:Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->refreshEntityGuids:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 312
    const-string/jumbo v0, "basket: [%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s]"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->playerDamages:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->gameEntities:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->apGains:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->levelUp:Lcom/nianticproject/ingress/shared/model/LevelUp;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->inventory:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->deletedEntityGuids:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->energyGlobGuids:Ljava/util/Set;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->energyGlobTimestamp:Ljava/lang/Long;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->knobBundleUpdate:Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->refreshEntityGuids:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
