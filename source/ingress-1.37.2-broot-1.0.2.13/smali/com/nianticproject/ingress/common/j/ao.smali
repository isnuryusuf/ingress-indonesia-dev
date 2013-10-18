.class public final Lcom/nianticproject/ingress/common/j/ao;
.super Lcom/nianticproject/ingress/common/j/f;
.source "SourceFile"


# static fields
.field private static final a:Lcom/badlogic/gdx/math/Vector3;

.field private static final b:Lcom/badlogic/gdx/math/Vector3;

.field private static final c:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field private final d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

.field private final e:Lcom/nianticproject/ingress/common/j/ap;

.field private f:F

.field private g:Lcom/nianticproject/ingress/common/j/ar;

.field private h:Lcom/nianticproject/ingress/common/j/ap;

.field private i:F

.field private j:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v3, v3, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/ao;->a:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const v1, 0x44f38000

    const v2, 0x3ff95810

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/ao;->b:Lcom/badlogic/gdx/math/Vector3;

    .line 39
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    sput-object v0, Lcom/nianticproject/ingress/common/j/ao;->c:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/f;-><init>()V

    .line 127
    new-instance v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    .line 128
    new-instance v0, Lcom/nianticproject/ingress/common/j/ap;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/j/ap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    .line 129
    new-instance v0, Lcom/nianticproject/ingress/common/j/ap;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/j/ap;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->h:Lcom/nianticproject/ingress/common/j/ap;

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/j/ao;->a(F)V

    .line 131
    return-void
.end method

.method static synthetic n()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nianticproject/ingress/common/j/ao;->a:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method static synthetic o()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nianticproject/ingress/common/j/ao;->b:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method static synthetic p()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nianticproject/ingress/common/j/ao;->c:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->fieldOfView:F

    return v0
.end method

.method public final a(F)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 209
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->g:Lcom/nianticproject/ingress/common/j/ar;

    .line 210
    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/ar;->a()Lcom/nianticproject/ingress/common/j/ap;

    move-result-object v0

    .line 214
    iget v1, p0, Lcom/nianticproject/ingress/common/j/ao;->i:F

    iget v2, p0, Lcom/nianticproject/ingress/common/j/ao;->j:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 216
    iget v1, p0, Lcom/nianticproject/ingress/common/j/ao;->i:F

    iget v2, p0, Lcom/nianticproject/ingress/common/j/ao;->j:F

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v1

    .line 217
    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/ao;->h:Lcom/nianticproject/ingress/common/j/ap;

    invoke-virtual {v2, v3, v4}, Lcom/nianticproject/ingress/common/j/ap;->a(Lcom/nianticproject/ingress/common/j/ap;F)V

    .line 218
    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    invoke-virtual {v2, v0, v1}, Lcom/nianticproject/ingress/common/j/ap;->a(Lcom/nianticproject/ingress/common/j/ap;F)V

    .line 221
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ao;->i:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/j/ao;->i:F

    .line 222
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ao;->i:F

    iget v1, p0, Lcom/nianticproject/ingress/common/j/ao;->j:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->h:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    invoke-virtual {v0, v1, v4}, Lcom/nianticproject/ingress/common/j/ap;->a(Lcom/nianticproject/ingress/common/j/ap;F)V

    .line 229
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    iget v1, v1, Lcom/nianticproject/ingress/common/j/ap;->a:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->fieldOfView:F

    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    iget v1, v1, Lcom/nianticproject/ingress/common/j/ap;->b:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->near:F

    .line 231
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    iget v1, v1, Lcom/nianticproject/ingress/common/j/ap;->c:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->far:F

    .line 232
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 233
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->up:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ap;->f:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 234
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->lookAt(FFF)V

    .line 237
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->update()V

    .line 239
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportWidth:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget v1, v1, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportHeight:F

    div-float/2addr v0, v1

    .line 240
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    iget v1, v1, Lcom/nianticproject/ingress/common/j/ap;->a:F

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/j/g;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/j/ao;->f:F

    goto/16 :goto_0

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    invoke-virtual {v1, v0, v4}, Lcom/nianticproject/ingress/common/j/ap;->a(Lcom/nianticproject/ingress/common/j/ap;F)V

    goto :goto_1
.end method

.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    int-to-float v1, p1

    iput v1, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportWidth:F

    .line 139
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    int-to-float v1, p2

    iput v1, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportHeight:F

    .line 140
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/ar;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->h:Lcom/nianticproject/ingress/common/j/ap;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/j/ap;->a(Lcom/nianticproject/ingress/common/j/ap;F)V

    .line 186
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->g:Lcom/nianticproject/ingress/common/j/ar;

    if-nez v0, :cond_0

    const/high16 v0, 0x4000

    div-float v0, p2, v0

    :goto_0
    iput v0, p0, Lcom/nianticproject/ingress/common/j/ao;->i:F

    .line 187
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/ao;->g:Lcom/nianticproject/ingress/common/j/ar;

    .line 188
    iput p2, p0, Lcom/nianticproject/ingress/common/j/ao;->j:F

    .line 189
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()F
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportWidth:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget v1, v1, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->viewportHeight:F

    div-float/2addr v0, v1

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->near:F

    return v0
.end method

.method public final d()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->view:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public final e()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public final f()Lcom/badlogic/gdx/math/Frustum;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->frustum:Lcom/badlogic/gdx/math/Frustum;

    return-object v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ao;->f:F

    return v0
.end method

.method public final h()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->direction:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public final k()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ao;->d:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/PerspectiveCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/nianticproject/ingress/common/j/aq;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ao;->e:Lcom/nianticproject/ingress/common/j/ap;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/j/aq;-><init>(Lcom/nianticproject/ingress/common/j/ap;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/common/j/ao;->a(Lcom/nianticproject/ingress/common/j/ar;F)V

    .line 196
    return-void
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ao;->i:F

    iget v1, p0, Lcom/nianticproject/ingress/common/j/ao;->j:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
