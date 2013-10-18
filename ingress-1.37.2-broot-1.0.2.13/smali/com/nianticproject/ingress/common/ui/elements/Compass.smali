.class public final Lcom/nianticproject/ingress/common/ui/elements/Compass;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# static fields
.field private static final a:Lcom/badlogic/gdx/math/Vector3;

.field private static final b:Lcom/badlogic/gdx/math/Vector3;

.field private static final c:Lcom/badlogic/gdx/math/Vector3;

.field private static final d:Lcom/badlogic/gdx/math/Vector3;

.field private static final e:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field private final f:Lcom/nianticproject/ingress/common/ui/elements/r;

.field private g:Lcom/nianticproject/ingress/common/ui/elements/q;

.field private h:Lcom/nianticproject/ingress/common/ui/a/c;

.field private i:F

.field private j:F

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, -0x4080

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v2, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->a:Lcom/badlogic/gdx/math/Vector3;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->b:Lcom/badlogic/gdx/math/Vector3;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->c:Lcom/badlogic/gdx/math/Vector3;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v3, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->d:Lcom/badlogic/gdx/math/Vector3;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->e:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/r;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->g:Lcom/nianticproject/ingress/common/ui/elements/q;

    .line 167
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->f:Lcom/nianticproject/ingress/common/ui/elements/r;

    .line 168
    iput-boolean p2, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->l:Z

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/Compass;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/Compass;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/elements/Compass;)F
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->i:F

    return v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/ui/elements/Compass;)F
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->j:F

    return v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/ui/elements/Compass;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->k:Z

    return v0
.end method

.method static synthetic e()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->a:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/ui/elements/Compass;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->l:Z

    return v0
.end method

.method static synthetic f()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->b:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/ui/elements/Compass;)Lcom/nianticproject/ingress/common/ui/elements/r;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->f:Lcom/nianticproject/ingress/common/ui/elements/r;

    return-object v0
.end method

.method static synthetic g()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->c:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method static synthetic h()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->d:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method static synthetic i()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->e:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 176
    :try_start_0
    const-string/jumbo v0, "Compass.render"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->g:Lcom/nianticproject/ingress/common/ui/elements/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/q;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->g:Lcom/nianticproject/ingress/common/ui/elements/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/q;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 218
    const-class v0, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;

    .line 219
    iget v1, v0, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;->widthInDips:F

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v4

    .line 220
    iget v1, v0, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;->heightInDips:F

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v5

    .line 221
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v1

    iget v2, v0, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;->xRelativeToScreenWidth:F

    mul-float/2addr v2, v1

    .line 222
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    iget v0, v0, Lcom/nianticproject/ingress/common/ui/elements/Compass$CompassStyle;->yRelativeToScreenHeight:F

    mul-float/2addr v0, v3

    sub-float v0, v1, v0

    sub-float v3, v0, v5

    .line 224
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/q;

    new-instance v6, Lcom/nianticproject/ingress/common/ui/elements/p;

    invoke-direct {v6, p0}, Lcom/nianticproject/ingress/common/ui/elements/p;-><init>(Lcom/nianticproject/ingress/common/ui/elements/Compass;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/ui/elements/q;-><init>(Lcom/nianticproject/ingress/common/ui/elements/Compass;FFFFLcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->g:Lcom/nianticproject/ingress/common/ui/elements/q;

    .line 234
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->g:Lcom/nianticproject/ingress/common/ui/elements/q;

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/elements/q;->c()V

    .line 235
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->g:Lcom/nianticproject/ingress/common/ui/elements/q;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/a/c;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/nianticproject/ingress/common/ui/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->h:Lcom/nianticproject/ingress/common/ui/a/c;

    .line 236
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->g:Lcom/nianticproject/ingress/common/ui/elements/q;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 237
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->l:Z

    .line 252
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->g:Lcom/nianticproject/ingress/common/ui/elements/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/q;->d()V

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 197
    const v0, -0x3dda039d

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->j:F

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->k:Z

    .line 199
    return-void
.end method

.method public final b(F)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->i:F

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->k:Z

    .line 191
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->h:Lcom/nianticproject/ingress/common/ui/a/c;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/a/c;->b(Z)V

    .line 260
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->l:Z

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->l:Z

    .line 214
    return-void
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/Compass;->g:Lcom/nianticproject/ingress/common/ui/elements/q;

    invoke-static {}, Lcom/nianticproject/ingress/common/ui/elements/q;->b()V

    .line 248
    return-void
.end method
