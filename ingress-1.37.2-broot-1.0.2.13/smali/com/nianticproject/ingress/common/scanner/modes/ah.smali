.class public final Lcom/nianticproject/ingress/common/scanner/modes/ah;
.super Lcom/nianticproject/ingress/common/ui/d/e;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/en;
.implements Lcom/nianticproject/ingress/common/ui/e/a;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:D


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;"
        }
    .end annotation
.end field

.field private final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/inventory/ui/q;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/nianticproject/ingress/common/ui/g/s;

.field private D:Lcom/nianticproject/ingress/common/ui/g/c;

.field private E:Z

.field private F:Z

.field private G:Lcom/google/a/d/u;

.field private final H:Lcom/nianticproject/ingress/common/ui/g/g;

.field private final I:Lcom/nianticproject/ingress/common/ui/g/f;

.field private final c:Lcom/nianticproject/ingress/common/scanner/k;

.field private final d:Lcom/nianticproject/ingress/common/scanner/fp;

.field private final e:Lcom/nianticproject/ingress/common/j/h;

.field private final f:Lcom/nianticproject/ingress/common/h/l;

.field private final g:Lcom/nianticproject/ingress/common/r;

.field private final h:Lcom/nianticproject/ingress/common/j/av;

.field private final i:Lcom/nianticproject/ingress/common/model/k;

.field private j:Lcom/nianticproject/ingress/common/scanner/modes/af;

.field private k:Lcom/nianticproject/ingress/common/scanner/modes/ap;

.field private l:Lcom/nianticproject/ingress/common/ui/g/m;

.field private m:Z

.field private n:Lcom/nianticproject/ingress/gameentity/components/Portal;

.field private o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/nianticproject/ingress/common/model/GameState;

.field private r:J

.field private s:Lcom/nianticproject/ingress/common/j/as;

.field private final t:Lcom/nianticproject/ingress/common/j/ap;

.field private final u:Lcom/nianticproject/ingress/common/j/ar;

.field private final v:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

.field private final w:Lcom/badlogic/gdx/math/Vector2;

.field private x:Lcom/nianticproject/ingress/common/scanner/em;

.field private y:F

.field private z:Lcom/nianticproject/ingress/common/scanner/modes/am;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 117
    const-wide v0, 0x4056800000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->b:D

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/r;Lcom/nianticproject/ingress/common/j/av;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/d/e;-><init>()V

    .line 156
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->p:Ljava/util/Map;

    .line 166
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->w:Lcom/badlogic/gdx/math/Vector2;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->y:F

    .line 173
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->B:Ljava/util/Map;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->E:Z

    .line 1027
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/aj;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/modes/aj;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->H:Lcom/nianticproject/ingress/common/ui/g/g;

    .line 1047
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/ak;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/modes/ak;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->I:Lcom/nianticproject/ingress/common/ui/g/f;

    .line 199
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/fp;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->d:Lcom/nianticproject/ingress/common/scanner/fp;

    .line 200
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    .line 201
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/h;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->e:Lcom/nianticproject/ingress/common/j/h;

    .line 202
    invoke-static {p6}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/h/l;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->f:Lcom/nianticproject/ingress/common/h/l;

    .line 203
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->n:Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 204
    invoke-static {p7}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/r;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->g:Lcom/nianticproject/ingress/common/r;

    .line 205
    iput-object p8, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->h:Lcom/nianticproject/ingress/common/j/av;

    .line 207
    new-instance v0, Lcom/nianticproject/ingress/common/j/ap;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/j/ap;-><init>()V

    const/high16 v1, 0x4220

    iput v1, v0, Lcom/nianticproject/ingress/common/j/ap;->a:F

    const/high16 v1, 0x4170

    iput v1, v0, Lcom/nianticproject/ingress/common/j/ap;->b:F

    const/high16 v1, 0x4500

    iput v1, v0, Lcom/nianticproject/ingress/common/j/ap;->c:F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    .line 208
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/ai;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/modes/ai;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->u:Lcom/nianticproject/ingress/common/j/ar;

    .line 215
    new-instance v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->v:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    .line 216
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->v:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    invoke-interface {p5}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->defaultColor:Lcom/badlogic/gdx/graphics/Color;

    .line 217
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/am;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/am;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->z:Lcom/nianticproject/ingress/common/scanner/modes/am;

    .line 219
    iput-object p5, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->i:Lcom/nianticproject/ingress/common/model/k;

    .line 220
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/j/ap;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    return-object v0
.end method

.method private a(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .parameter

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->E:Z

    if-eqz v0, :cond_0

    .line 475
    const/high16 v0, 0x41a0

    .line 479
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ap;->f:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    neg-float v1, v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/ap;->f:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    neg-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 481
    return-void

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->d()F

    move-result v0

    const v1, 0x3f99999a

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/ah;Ljava/util/Collection;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/scanner/ej;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->p:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->p:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->a()V

    :cond_1
    new-instance v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->e:Lcom/nianticproject/ingress/common/j/h;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->v:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    invoke-direct {v0, v4, v5}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;-><init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->a(Z)V

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v4, v2, v0}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/ui/hud/b;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->p:Ljava/util/Map;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 738
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->w:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 739
    return-void
.end method

.method private b(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .parameter

    .prologue
    .line 745
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->b(FF)V

    .line 746
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 747
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 748
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/modes/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->f()V

    return-void
.end method

.method private c(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 911
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->s:Lcom/nianticproject/ingress/common/j/as;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->A()F

    move-result v1

    div-float v1, p1, v1

    const/high16 v2, 0x3f80

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/scanner/k;->z()F

    move-result v3

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/j/g;->a(Lcom/nianticproject/ingress/common/j/f;FF)Lcom/badlogic/gdx/math/collision/Ray;

    move-result-object v0

    .line 912
    if-eqz v0, :cond_0

    .line 913
    iget-object v1, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v2, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v1, v2

    .line 914
    iget-object v2, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 915
    iget-object v3, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v0, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v0, v1

    sub-float v1, v3, v0

    .line 917
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 922
    :goto_0
    return-object v0

    .line 919
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/scanner/modes/ap;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->k:Lcom/nianticproject/ingress/common/scanner/modes/ap;

    return-object v0
.end method

.method static synthetic c()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method private d()F
    .locals 4

    .prologue
    .line 458
    const-wide/16 v0, 0x12c

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->r:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/j/as;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->s:Lcom/nianticproject/ingress/common/j/as;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/scanner/modes/af;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    return-object v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 512
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->q:Lcom/nianticproject/ingress/common/model/GameState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->x:Lcom/nianticproject/ingress/common/scanner/em;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m:Z

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->x:Lcom/nianticproject/ingress/common/scanner/em;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/em;->b()Ljava/lang/String;

    move-result-object v1

    .line 517
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->q:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nianticproject/ingress/gameentity/f;

    .line 518
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    if-nez v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->B:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 520
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    .line 523
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v7

    .line 524
    if-eqz v4, :cond_0

    if-eqz v7, :cond_0

    .line 525
    new-instance v0, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->e:Lcom/nianticproject/ingress/common/j/h;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->i:Lcom/nianticproject/ingress/common/model/k;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/gf;->a(Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;)Lcom/nianticproject/ingress/common/scanner/j;

    move-result-object v4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;-><init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/j;Lcom/badlogic/gdx/math/Rectangle;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    .line 527
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    invoke-virtual {v0, v7, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/ui/hud/b;)V

    .line 531
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v3, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 532
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->l:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLevel()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/g/m;->a(I)V

    .line 534
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->E:Z

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->a(Z)V

    goto :goto_0

    .line 536
    :cond_2
    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->a()V

    .line 538
    iput-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    goto :goto_0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/j/ar;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->u:Lcom/nianticproject/ingress/common/j/ar;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 543
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->x:Lcom/nianticproject/ingress/common/scanner/em;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m:Z

    if-eqz v0, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->i:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->n:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/gameentity/components/i;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v1, "Origin portal moved out of range"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->x:Lcom/nianticproject/ingress/common/scanner/em;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/em;->b()Ljava/lang/String;

    move-result-object v0

    .line 555
    if-nez v0, :cond_6

    .line 556
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->C:Lcom/nianticproject/ingress/common/ui/g/s;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/g/s;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 558
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v1, "Querying Linkability..."

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 561
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->C:Lcom/nianticproject/ingress/common/ui/g/s;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/g/s;->b()I

    move-result v0

    if-nez v0, :cond_5

    .line 562
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v1, "No Linkable Portals"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v1, "Select a Portal Key"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    .line 566
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->F:Z

    if-eqz v0, :cond_0

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->F:Z

    .line 569
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->l:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/g/m;->a()V

    goto :goto_0

    .line 577
    :cond_6
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->B:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 578
    if-nez v0, :cond_7

    .line 580
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v1, "No Key for Portal"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_7
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->C:Lcom/nianticproject/ingress/common/ui/g/s;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/g/s;->d(Lcom/nianticproject/ingress/common/inventory/ui/q;)Lcom/nianticproject/ingress/shared/n;

    move-result-object v1

    .line 586
    if-eqz v1, :cond_8

    .line 588
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c;->a()Lcom/nianticproject/ingress/common/ui/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/ui/c;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    :cond_8
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->C:Lcom/nianticproject/ingress/common/ui/g/s;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/g/s;->c(Lcom/nianticproject/ingress/common/inventory/ui/q;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 594
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v1, "Create Link"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 600
    :cond_9
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v1, "Obtaining Portal Fix..."

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/ui/g/m;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->l:Lcom/nianticproject/ingress/common/ui/g/m;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/ap;->f:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 755
    return-void
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/h/l;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->f:Lcom/nianticproject/ingress/common/h/l;

    return-object v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Z
    .locals 1
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m:Z

    return v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/scanner/em;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->x:Lcom/nianticproject/ingress/common/scanner/em;

    return-object v0
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->i:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method static synthetic l(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/gameentity/components/Portal;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->n:Lcom/nianticproject/ingress/gameentity/components/Portal;

    return-object v0
.end method

.method static synthetic m(Lcom/nianticproject/ingress/common/scanner/modes/ah;)Lcom/nianticproject/ingress/common/ui/g/s;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->C:Lcom/nianticproject/ingress/common/ui/g/s;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/e/d;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    new-instance v0, Lcom/nianticproject/ingress/common/ui/e/d;

    invoke-direct {v0, v1, v1}, Lcom/nianticproject/ingress/common/ui/e/d;-><init>(ZZ)V

    return-object v0
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 2
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->G:Lcom/google/a/d/u;

    .line 486
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->a()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->e()V

    .line 491
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->f()V

    .line 492
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->k:Lcom/nianticproject/ingress/common/scanner/modes/ap;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/modes/ap;->a(Lcom/nianticproject/ingress/common/scanner/modes/ap;)V

    .line 494
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 495
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->d:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v1, p1, v0}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;Lcom/badlogic/gdx/math/Vector2;)V

    .line 496
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->a(Lcom/badlogic/gdx/math/Vector2;)V

    .line 497
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v1, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->b(FF)V

    .line 498
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/as;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 247
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    iget-wide v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->r:J

    long-to-int v1, v1

    const/high16 v2, 0x42c8

    int-to-float v1, v1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/scanner/k;->z()F

    move-result v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/scanner/k;->A()F

    move-result v4

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    const v3, 0x3f8ccccd

    mul-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4034

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget v3, v3, Lcom/nianticproject/ingress/common/j/ap;->c:F

    const/high16 v4, 0x4400

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v6, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    sget-wide v3, Lcom/nianticproject/ingress/common/scanner/modes/ah;->b:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-float v3, v3

    sget-wide v4, Lcom/nianticproject/ingress/common/scanner/modes/ah;->b:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    neg-double v4, v4

    mul-double/2addr v1, v4

    double-to-float v1, v1

    invoke-virtual {v0, v6, v3, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->g()V

    .line 248
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->b(Lcom/badlogic/gdx/math/Vector2;)V

    .line 249
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->u:Lcom/nianticproject/ingress/common/j/ar;

    const/high16 v1, 0x3f40

    invoke-virtual {p1, v0, v1}, Lcom/nianticproject/ingress/common/j/as;->a(Lcom/nianticproject/ingress/common/j/ar;F)V

    .line 250
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->s:Lcom/nianticproject/ingress/common/j/as;

    .line 253
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->n:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v1, "small"

    invoke-direct {v0, p1, v1}, Lcom/nianticproject/ingress/common/scanner/modes/af;-><init>(Lcom/nianticproject/ingress/common/j/as;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    .line 257
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/ap;

    invoke-direct {v0, p0, v7}, Lcom/nianticproject/ingress/common/scanner/modes/ap;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->k:Lcom/nianticproject/ingress/common/scanner/modes/ap;

    .line 259
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 260
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->k:Lcom/nianticproject/ingress/common/scanner/modes/ap;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 261
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/em;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->g:Lcom/nianticproject/ingress/common/r;

    invoke-direct {v0, v1, p0, v2}, Lcom/nianticproject/ingress/common/scanner/em;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/en;Lcom/nianticproject/ingress/common/r;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->x:Lcom/nianticproject/ingress/common/scanner/em;

    .line 262
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->i:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->z:Lcom/nianticproject/ingress/common/scanner/modes/am;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 264
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->i:Lcom/nianticproject/ingress/common/model/k;

    sget-object v1, Lcom/nianticproject/ingress/shared/af;->i:Lcom/nianticproject/ingress/shared/af;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/gameentity/a;->a(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/shared/af;)Lcom/google/a/a/aj;

    move-result-object v2

    .line 266
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->i:Lcom/nianticproject/ingress/common/model/k;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/a/a/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Lcom/nianticproject/ingress/common/model/k;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 274
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->n:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    const-class v5, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v1, v5}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalGuid()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->B:Ljava/util/Map;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->B:Ljava/util/Map;

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/eq;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v3, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    new-instance v5, Lcom/nianticproject/ingress/common/scanner/modes/an;

    invoke-direct {v5, p0, v3, v0}, Lcom/nianticproject/ingress/common/scanner/modes/an;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;Lcom/google/a/d/u;Lcom/nianticproject/ingress/common/inventory/ui/q;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/as;

    invoke-direct {v0, p0, v7}, Lcom/nianticproject/ingress/common/scanner/modes/as;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;B)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/c/eq;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/modes/an;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->A:Ljava/util/List;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/modes/an;->b:Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 275
    :cond_4
    invoke-virtual {v2}, Lcom/google/a/a/aj;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 277
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v1, "No Keys In Inventory"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    .line 290
    :goto_4
    new-instance v0, Lcom/nianticproject/ingress/common/ui/g/s;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->A:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/ui/g/s;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->C:Lcom/nianticproject/ingress/common/ui/g/s;

    .line 292
    new-instance v0, Lcom/nianticproject/ingress/common/ui/g/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->h:Lcom/nianticproject/ingress/common/j/av;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->x:Lcom/nianticproject/ingress/common/scanner/em;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->i:Lcom/nianticproject/ingress/common/model/k;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->C:Lcom/nianticproject/ingress/common/ui/g/s;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/g/m;-><init>(Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/scanner/em;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/ui/g/s;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->l:Lcom/nianticproject/ingress/common/ui/g/m;

    .line 294
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->l:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 297
    new-instance v0, Lcom/nianticproject/ingress/common/ui/g/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->f:Lcom/nianticproject/ingress/common/h/l;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->n:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->H:Lcom/nianticproject/ingress/common/ui/g/g;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/g/c;-><init>(Lcom/nianticproject/ingress/common/h/l;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/g/g;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->D:Lcom/nianticproject/ingress/common/ui/g/c;

    .line 299
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->D:Lcom/nianticproject/ingress/common/ui/g/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->I:Lcom/nianticproject/ingress/common/ui/g/f;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/g/c;->a(Lcom/nianticproject/ingress/common/ui/g/f;)V

    .line 300
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->D:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/g/c;->a()V

    .line 303
    iput-boolean v8, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->F:Z

    .line 304
    return-void

    .line 278
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v1, "No Usable Keys In Inventory"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 283
    :cond_6
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v1, "Querying Linkability..."

    invoke-virtual {v0, v1, v8}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;Z)V

    goto :goto_4
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 2
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->n:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/GameState;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->q:Lcom/nianticproject/ingress/common/model/GameState;

    .line 726
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->q:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 727
    if-eqz v0, :cond_0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 728
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->n:Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 729
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->n:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->maxLinkRange()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->r:J

    .line 732
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->e()V

    .line 733
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->f()V

    .line 734
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 605
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 607
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 608
    if-nez v0, :cond_2

    .line 645
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 605
    goto :goto_0

    .line 614
    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->q:Lcom/nianticproject/ingress/common/model/GameState;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v1, p1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    .line 615
    if-eqz v1, :cond_0

    .line 619
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v5, "... Establishing Link ... "

    invoke-virtual {v4, v5, v2}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;Z)V

    .line 620
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m:Z

    .line 622
    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 624
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->f:Lcom/nianticproject/ingress/common/h/l;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->n:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v6

    invoke-interface {v6}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/nianticproject/ingress/common/scanner/modes/ao;

    invoke-direct {v7, p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ao;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;Lcom/nianticproject/ingress/common/inventory/ui/q;)V

    invoke-interface {v4, v5, v2, v6, v7}, Lcom/nianticproject/ingress/common/h/l;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/components/Portal;Ljava/lang/String;Lcom/nianticproject/ingress/common/x/g;)V

    .line 628
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 629
    const/high16 v0, 0x4100

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->y:F

    .line 635
    :goto_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->x:Lcom/nianticproject/ingress/common/scanner/em;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->n:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->i:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v4}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4}, Lcom/nianticproject/ingress/common/scanner/em;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/ai;)V

    .line 639
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->l:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/g/m;->a(Z)V

    .line 640
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    if-eqz v0, :cond_3

    .line 641
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->a()V

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    .line 644
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->k:Lcom/nianticproject/ingress/common/scanner/modes/ap;

    invoke-static {v0, v3}, Lcom/nianticproject/ingress/common/scanner/modes/ap;->a(Lcom/nianticproject/ingress/common/scanner/modes/ap;Z)V

    goto :goto_1

    .line 631
    :cond_4
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->y:F

    goto :goto_2
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1018
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->E:Z

    .line 1019
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->G:Lcom/google/a/d/u;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->G:Lcom/google/a/d/u;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->a(Lcom/google/a/d/u;)V

    .line 1022
    :cond_0
    return-void
.end method

.method public final a(F)Z
    .locals 7
    .parameter

    .prologue
    const/high16 v3, 0x4120

    const/4 v0, 0x1

    const/high16 v6, 0x3f80

    .line 784
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->k:Lcom/nianticproject/ingress/common/scanner/modes/ap;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/modes/ap;->a()F

    move-result v2

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/af;->b(F)V

    .line 785
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->l:Lcom/nianticproject/ingress/common/ui/g/m;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/modes/af;->b()F

    move-result v2

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ui/g/m;->b(F)V

    .line 787
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->o()Lcom/nianticproject/ingress/common/ui/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/d/a;->isPanning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m:Z

    if-nez v1, :cond_1

    .line 790
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->d()F

    move-result v1

    .line 791
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 792
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 796
    sget-object v4, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->dst(FF)F

    move-result v4

    .line 798
    add-float v5, v1, v6

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    .line 803
    mul-float v5, v2, v1

    div-float/2addr v5, v4

    mul-float/2addr v1, v3

    div-float/2addr v1, v4

    invoke-direct {p0, v5, v1}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->b(FF)V

    .line 806
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->w:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->dst(FF)F

    move-result v1

    .line 808
    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    .line 810
    const/high16 v1, 0x40a0

    mul-float/2addr v1, p1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 812
    const v4, 0x3dcccccd

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 814
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->w:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v4, v2, v4

    mul-float/2addr v4, v1

    sub-float/2addr v2, v4

    .line 815
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->w:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v4, v3, v4

    mul-float/2addr v1, v4

    sub-float v1, v3, v1

    .line 817
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v3, v2, v4, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 818
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v3, v2, v4, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 822
    :cond_1
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m:Z

    if-eqz v1, :cond_3

    .line 823
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->y:F

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->y:F

    .line 824
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->y:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 825
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->x:Lcom/nianticproject/ingress/common/scanner/em;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/em;->a(Z)V

    .line 830
    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->s:Lcom/nianticproject/ingress/common/j/as;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(FF)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 836
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m:Z

    if-eqz v0, :cond_0

    .line 853
    :goto_0
    return v5

    .line 841
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->div(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 842
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v2

    const v3, 0x44f38000

    const/high16 v4, 0x42c8

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->div(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 845
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/ap;->f:Lcom/badlogic/gdx/math/Vector3;

    .line 846
    neg-float v1, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 847
    neg-float v2, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 848
    iget v3, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v1

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    .line 849
    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v4

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 850
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ap;->f:Lcom/badlogic/gdx/math/Vector3;

    iput v3, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 851
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ap;->f:Lcom/badlogic/gdx/math/Vector3;

    iput v0, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 426
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 449
    :goto_0
    return v0

    .line 430
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 431
    goto :goto_0

    .line 434
    :cond_1
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v3

    .line 435
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v3, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 436
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->n:Lcom/nianticproject/ingress/gameentity/components/Portal;

    if-eq v0, v4, :cond_3

    .line 437
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->B:Ljava/util/Map;

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 438
    if-nez v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    const-string/jumbo v1, "No Key for Portal"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/af;->a(Ljava/lang/String;)V

    :goto_1
    move v0, v2

    .line 446
    goto :goto_0

    .line 441
    :cond_2
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->x:Lcom/nianticproject/ingress/common/scanner/em;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    const-class v4, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v1, v4}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-virtual {v3, v1}, Lcom/nianticproject/ingress/common/scanner/em;->a(Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;)V

    .line 443
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->l:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/g/m;->a(Lcom/nianticproject/ingress/common/inventory/ui/q;)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 449
    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Z
    .locals 1
    .parameter

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->D:Lcom/nianticproject/ingress/common/ui/g/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/g/c;->b()V

    .line 399
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->x:Lcom/nianticproject/ingress/common/scanner/em;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/em;->a(Z)V

    .line 401
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->o:Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/hud/PortalInfoHud;->a()V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;

    .line 406
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->a()V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 410
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->j:Lcom/nianticproject/ingress/common/scanner/modes/af;

    .line 412
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->k:Lcom/nianticproject/ingress/common/scanner/modes/ap;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 413
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->k:Lcom/nianticproject/ingress/common/scanner/modes/ap;

    .line 415
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->l:Lcom/nianticproject/ingress/common/ui/g/m;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 416
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->l:Lcom/nianticproject/ingress/common/ui/g/m;

    .line 418
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->s:Lcom/nianticproject/ingress/common/j/as;

    .line 420
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->i:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->z:Lcom/nianticproject/ingress/common/scanner/modes/am;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 421
    return-void
.end method

.method public final b(Lcom/google/a/d/u;)V
    .locals 2
    .parameter

    .prologue
    .line 502
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 503
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->d:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v1, p1, v0}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;Lcom/badlogic/gdx/math/Vector2;)V

    .line 505
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->g()V

    .line 507
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->a(Lcom/badlogic/gdx/math/Vector2;)V

    .line 508
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->b(Lcom/badlogic/gdx/math/Vector2;)V

    .line 509
    return-void
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 1106
    return-void
.end method

.method public final pan(FFFF)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 859
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->m:Z

    if-eqz v0, :cond_1

    .line 897
    :cond_0
    :goto_0
    return v6

    .line 863
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 864
    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-direct {p0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->c(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 865
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 866
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    .line 867
    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    .line 870
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->d()F

    move-result v1

    const v3, 0x3f99999a

    mul-float/2addr v3, v1

    .line 873
    sget-object v4, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    .line 877
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v1, v2

    .line 878
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v0, v2

    .line 879
    invoke-virtual {v4, v1, v0}, Lcom/badlogic/gdx/math/Vector2;->dst(FF)F

    move-result v2

    .line 881
    cmpl-float v5, v2, v3

    if-lez v5, :cond_2

    .line 882
    div-float v2, v3, v2

    .line 883
    iget v3, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    iget v3, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v1, v3

    .line 884
    iget v3, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    iget v2, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v2

    .line 887
    :cond_2
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v2, v1, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 888
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ah;->t:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v2, v1, v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 894
    invoke-direct {p0, v1, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ah;->b(FF)V

    goto :goto_0
.end method
