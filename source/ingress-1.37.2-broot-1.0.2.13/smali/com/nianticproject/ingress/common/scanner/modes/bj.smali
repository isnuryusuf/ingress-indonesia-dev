.class public final Lcom/nianticproject/ingress/common/scanner/modes/bj;
.super Lcom/nianticproject/ingress/common/scanner/modes/a;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/e/a;


# static fields
.field private static final f:F


# instance fields
.field private final g:Lcom/nianticproject/ingress/gameentity/f;

.field private final h:Z

.field private final i:Lcom/nianticproject/ingress/common/scanner/j;

.field private final j:Lcom/nianticproject/ingress/common/j/h;

.field private final k:Lcom/nianticproject/ingress/common/model/k;

.field private final l:Lcom/nianticproject/ingress/common/scanner/modes/bl;

.field private final m:Lcom/nianticproject/ingress/common/ui/t;

.field private final n:Lcom/nianticproject/ingress/common/h/l;

.field private o:Lcom/nianticproject/ingress/common/scanner/modes/bn;

.field private p:Lcom/nianticproject/ingress/common/scanner/modes/bm;

.field private q:Lcom/nianticproject/ingress/common/scanner/modes/bt;

.field private r:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

.field private s:Lcom/nianticproject/ingress/common/scanner/modes/bk;

.field private t:Lcom/nianticproject/ingress/common/model/ab;

.field private final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/r;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/nianticproject/ingress/common/scanner/ej;

.field private w:Lcom/nianticproject/ingress/gameentity/f;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/high16 v0, 0x4230

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v0

    sput v0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->f:F

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/j;Lcom/nianticproject/ingress/common/scanner/modes/bl;Lcom/nianticproject/ingress/common/ui/t;Z)V
    .locals 8
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

    .prologue
    .line 157
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/nianticproject/ingress/common/scanner/modes/a;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/modes/g;)V

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->r:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    .line 124
    sget-object v1, Lcom/nianticproject/ingress/common/model/ab;->c:Lcom/nianticproject/ingress/common/model/ab;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->t:Lcom/nianticproject/ingress/common/model/ab;

    .line 125
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->u:Ljava/util/Map;

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->v:Lcom/nianticproject/ingress/common/scanner/ej;

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->w:Lcom/nianticproject/ingress/gameentity/f;

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->x:Z

    .line 158
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->j:Lcom/nianticproject/ingress/common/j/h;

    .line 159
    iput-object p4, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->k:Lcom/nianticproject/ingress/common/model/k;

    .line 160
    iput-object p6, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->g:Lcom/nianticproject/ingress/gameentity/f;

    .line 161
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->l:Lcom/nianticproject/ingress/common/scanner/modes/bl;

    .line 162
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->m:Lcom/nianticproject/ingress/common/ui/t;

    .line 163
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->n:Lcom/nianticproject/ingress/common/h/l;

    .line 164
    invoke-static {p7}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/scanner/j;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->i:Lcom/nianticproject/ingress/common/scanner/j;

    .line 165
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->h:Z

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/bj;Lcom/nianticproject/ingress/common/model/ab;)Lcom/nianticproject/ingress/common/model/ab;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->t:Lcom/nianticproject/ingress/common/model/ab;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/scanner/ej;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->v:Lcom/nianticproject/ingress/common/scanner/ej;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/bj;Lcom/nianticproject/ingress/common/scanner/modes/bk;)Lcom/nianticproject/ingress/common/scanner/modes/bk;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->s:Lcom/nianticproject/ingress/common/scanner/modes/bk;

    return-object p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->u:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->w:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/model/ab;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->t:Lcom/nianticproject/ingress/common/model/ab;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->g:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/scanner/modes/bl;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->l:Lcom/nianticproject/ingress/common/scanner/modes/bl;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->h:Z

    return v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/h/l;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->n:Lcom/nianticproject/ingress/common/h/l;

    return-object v0
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->c:Lcom/nianticproject/ingress/common/model/GameState;

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->i:Lcom/nianticproject/ingress/common/scanner/j;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/j;->a()Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->c:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->w:Lcom/nianticproject/ingress/gameentity/f;

    .line 226
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->w:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->r:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    if-nez v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->p:Lcom/nianticproject/ingress/common/scanner/modes/bm;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->p:Lcom/nianticproject/ingress/common/scanner/modes/bm;

    .line 229
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->v:Lcom/nianticproject/ingress/common/scanner/ej;

    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->v:Lcom/nianticproject/ingress/common/scanner/ej;

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->j:Lcom/nianticproject/ingress/common/j/h;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->k:Lcom/nianticproject/ingress/common/model/k;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->w:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->i:Lcom/nianticproject/ingress/common/scanner/j;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->q:Lcom/nianticproject/ingress/common/scanner/modes/bt;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/scanner/modes/bt;->a()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v5

    const-string/jumbo v6, "remote-portal"

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;-><init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/j;Lcom/badlogic/gdx/math/Rectangle;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->r:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    .line 233
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->v:Lcom/nianticproject/ingress/common/scanner/ej;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->r:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/ui/hud/b;)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->w:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 238
    if-eqz v0, :cond_2

    .line 239
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->u:Ljava/util/Map;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/modes/RemotePortalMode$1;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/scanner/modes/RemotePortalMode$1;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/bj;)V

    invoke-static {v2, v0}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Lcom/nianticproject/ingress/gameentity/g;Lcom/nianticproject/ingress/gameentity/components/Portal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 255
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->o:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->o:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a(Lcom/nianticproject/ingress/common/scanner/modes/bn;)V

    .line 257
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->o:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bn;->b(Lcom/nianticproject/ingress/common/scanner/modes/bn;)V

    .line 260
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->x:Z

    goto :goto_0

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->w:Lcom/nianticproject/ingress/gameentity/f;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->r:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->r:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->a()V

    .line 252
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->r:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    goto :goto_1
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/ui/t;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->m:Lcom/nianticproject/ingress/common/ui/t;

    return-object v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/scanner/modes/bj;)Lcom/nianticproject/ingress/common/scanner/modes/bk;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->s:Lcom/nianticproject/ingress/common/scanner/modes/bk;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/e/d;
    .locals 3

    .prologue
    .line 194
    new-instance v0, Lcom/nianticproject/ingress/common/ui/e/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/e/d;-><init>(ZZ)V

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/as;)V
    .locals 8
    .parameter

    .prologue
    const-wide/high16 v6, -0x3fbc

    .line 170
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/a;->a(Lcom/nianticproject/ingress/common/j/as;)V

    .line 172
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/bt;

    sget v1, Lcom/nianticproject/ingress/common/scanner/modes/bj;->f:F

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/bt;-><init>(F)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->q:Lcom/nianticproject/ingress/common/scanner/modes/bt;

    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->q:Lcom/nianticproject/ingress/common/scanner/modes/bt;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 175
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->i:Lcom/nianticproject/ingress/common/scanner/j;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/j;->b()Lcom/google/a/d/u;

    move-result-object v1

    const v0, 0x3fc90fdb

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->d()F

    move-result v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/k;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->b:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->f()F

    move-result v0

    :goto_0
    add-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/google/a/d/u;->a()Lcom/google/a/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/d/d;->b()J

    move-result-wide v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1}, Lcom/google/a/d/u;->d()Lcom/google/a/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/d;->b()J

    move-result-wide v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-long v0, v0

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Lcom/google/a/d/u;->a(JJ)Lcom/google/a/d/u;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/google/a/d/u;)V

    .line 178
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/bn;

    sget v1, Lcom/nianticproject/ingress/common/scanner/modes/bj;->f:F

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/bn;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/bj;F)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->o:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    .line 179
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->o:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 181
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->c:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->i:Lcom/nianticproject/ingress/common/scanner/j;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/scanner/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dh;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/bm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/bm;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->p:Lcom/nianticproject/ingress/common/scanner/modes/bm;

    .line 183
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->a:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->p:Lcom/nianticproject/ingress/common/scanner/modes/bm;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->o:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bn;->a(Lcom/nianticproject/ingress/common/scanner/modes/bn;)V

    .line 187
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->o:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bn;->b(Lcom/nianticproject/ingress/common/scanner/modes/bn;)V

    .line 189
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->h()V

    .line 190
    return-void

    .line 175
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/a;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->x:Z

    .line 219
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->x:Z

    if-eqz v0, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/bj;->h()V

    .line 624
    :cond_0
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/a;->a(F)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/modes/a;->b()V

    .line 201
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->p:Lcom/nianticproject/ingress/common/scanner/modes/bm;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->p:Lcom/nianticproject/ingress/common/scanner/modes/bm;

    .line 202
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->o:Lcom/nianticproject/ingress/common/scanner/modes/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bn;->e()V

    .line 203
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->r:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->r:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->a()V

    .line 205
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->r:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->s:Lcom/nianticproject/ingress/common/scanner/modes/bk;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->s:Lcom/nianticproject/ingress/common/scanner/modes/bk;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/modes/bk;->g()V

    .line 209
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->s:Lcom/nianticproject/ingress/common/scanner/modes/bk;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->q:Lcom/nianticproject/ingress/common/scanner/modes/bt;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bj;->q:Lcom/nianticproject/ingress/common/scanner/modes/bt;

    .line 213
    return-void
.end method

.method protected final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/modes/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/modes/h;->d:Lcom/nianticproject/ingress/common/scanner/modes/h;

    invoke-static {v0}, Lcom/google/a/c/du;->b(Ljava/lang/Object;)Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method
