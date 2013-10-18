.class public Lcom/nianticproject/ingress/common/u/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/x/i;

.field private final c:Lcom/nianticproject/ingress/common/model/k;

.field private final d:Lcom/nianticproject/ingress/common/model/d;

.field private final e:Lcom/nianticproject/ingress/common/g/e;

.field private final f:Lcom/nianticproject/ingress/common/u/p;

.field private final g:Lcom/nianticproject/ingress/common/u/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/u/j;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/u/j;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/model/d;Lcom/nianticproject/ingress/common/u/f;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/x/i;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/j;->b:Lcom/nianticproject/ingress/common/x/i;

    .line 166
    iput-object p2, p0, Lcom/nianticproject/ingress/common/u/j;->e:Lcom/nianticproject/ingress/common/g/e;

    .line 167
    iput-object p3, p0, Lcom/nianticproject/ingress/common/u/j;->c:Lcom/nianticproject/ingress/common/model/k;

    .line 168
    iput-object p4, p0, Lcom/nianticproject/ingress/common/u/j;->d:Lcom/nianticproject/ingress/common/model/d;

    .line 169
    new-instance v0, Lcom/nianticproject/ingress/common/u/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/u/o;-><init>(Lcom/nianticproject/ingress/common/u/j;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/j;->f:Lcom/nianticproject/ingress/common/u/p;

    .line 170
    iput-object p5, p0, Lcom/nianticproject/ingress/common/u/j;->g:Lcom/nianticproject/ingress/common/u/f;

    .line 171
    return-void
.end method

.method protected constructor <init>(Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/model/d;Lcom/nianticproject/ingress/common/u/p;Lcom/nianticproject/ingress/common/u/f;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/x/i;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/j;->b:Lcom/nianticproject/ingress/common/x/i;

    .line 177
    iput-object p2, p0, Lcom/nianticproject/ingress/common/u/j;->e:Lcom/nianticproject/ingress/common/g/e;

    .line 178
    iput-object p3, p0, Lcom/nianticproject/ingress/common/u/j;->c:Lcom/nianticproject/ingress/common/model/k;

    .line 179
    iput-object p4, p0, Lcom/nianticproject/ingress/common/u/j;->d:Lcom/nianticproject/ingress/common/model/d;

    .line 180
    iput-object p5, p0, Lcom/nianticproject/ingress/common/u/j;->f:Lcom/nianticproject/ingress/common/u/p;

    .line 181
    iput-object p6, p0, Lcom/nianticproject/ingress/common/u/j;->g:Lcom/nianticproject/ingress/common/u/f;

    .line 182
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/j;->c:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method private static a(Lcom/nianticproject/ingress/shared/rpc/f;)Lcom/nianticproject/ingress/shared/model/e;
    .locals 3
    .parameter

    .prologue
    .line 268
    :try_start_0
    const-string/jumbo v0, "gameBasketHandler.createGameStateUpdateFromGameBasket"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->l()Lcom/nianticproject/ingress/shared/model/f;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/rpc/f;->a()Ljava/util/Set;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/shared/model/f;->a(Ljava/util/Set;)Lcom/nianticproject/ingress/shared/model/f;

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/rpc/f;->b()Ljava/util/Set;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/shared/model/f;->b(Ljava/util/Set;)Lcom/nianticproject/ingress/shared/model/f;

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/rpc/f;->d()Ljava/util/Set;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/rpc/f;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/shared/model/f;->a(Ljava/util/Set;Ljava/lang/Long;)Lcom/nianticproject/ingress/shared/model/f;

    .line 284
    :cond_2
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/rpc/f;->c()Ljava/util/Set;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_3

    .line 286
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/shared/model/f;->a(Ljava/util/Collection;)Lcom/nianticproject/ingress/shared/model/f;

    .line 288
    :cond_3
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/f;->a()Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 290
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    invoke-static {}, Lcom/nianticproject/ingress/common/u/am;->a()Lcom/nianticproject/ingress/common/u/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/u/am;->a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    .line 192
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;Lcom/nianticproject/ingress/shared/model/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/j;->g:Lcom/nianticproject/ingress/common/u/f;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/u/f;->a(Ljava/util/List;)I

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/j;->b:Lcom/nianticproject/ingress/common/x/i;

    new-instance v1, Lcom/nianticproject/ingress/common/u/k;

    invoke-direct {v1, p0, p2, p1}, Lcom/nianticproject/ingress/common/u/k;-><init>(Lcom/nianticproject/ingress/common/u/j;Lcom/nianticproject/ingress/shared/model/e;Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 242
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/x/i;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/j;->b:Lcom/nianticproject/ingress/common/x/i;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/model/d;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/j;->d:Lcom/nianticproject/ingress/common/model/d;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/u/f;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/j;->g:Lcom/nianticproject/ingress/common/u/f;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/u/j;)Lcom/nianticproject/ingress/common/g/e;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/j;->e:Lcom/nianticproject/ingress/common/g/e;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/shared/rpc/l;J)Lcom/nianticproject/ingress/common/u/ad;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/j;->f:Lcom/nianticproject/ingress/common/u/p;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/j;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/nianticproject/ingress/common/u/p;->a(Lcom/nianticproject/ingress/shared/rpc/l;JLcom/google/a/d/u;)Lcom/nianticproject/ingress/common/u/ad;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/l;Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/u/ad;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/j;->f:Lcom/nianticproject/ingress/common/u/p;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/nianticproject/ingress/common/u/p;->a(Lcom/nianticproject/ingress/shared/rpc/l;JLcom/google/a/d/u;)Lcom/nianticproject/ingress/common/u/ad;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    :try_start_0
    const-string/jumbo v0, "GameRpcHandler.onGameBasket"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c()Lcom/nianticproject/ingress/shared/rpc/f;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/shared/rpc/f;)Lcom/nianticproject/ingress/shared/model/e;

    move-result-object v0

    .line 199
    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;Lcom/nianticproject/ingress/shared/model/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final c(Lcom/nianticproject/ingress/shared/rpc/GameBasket;)Lcom/nianticproject/ingress/shared/model/e;
    .locals 2
    .parameter

    .prologue
    .line 214
    :try_start_0
    const-string/jumbo v0, "GameRpcHandler.partialProcessGameBasketForGameStateLoader"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c()Lcom/nianticproject/ingress/shared/rpc/f;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/shared/rpc/f;)Lcom/nianticproject/ingress/shared/model/e;

    move-result-object v0

    .line 217
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/nianticproject/ingress/common/u/j;->a(Lcom/nianticproject/ingress/shared/rpc/GameBasket;Lcom/nianticproject/ingress/shared/model/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
