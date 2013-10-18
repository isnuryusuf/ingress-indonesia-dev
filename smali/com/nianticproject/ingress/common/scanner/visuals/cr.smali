.class public Lcom/nianticproject/ingress/common/scanner/visuals/cr;
.super Lcom/nianticproject/ingress/common/j/q;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field private static final g:Lcom/badlogic/gdx/graphics/Color;

.field private static final h:Lcom/nianticproject/ingress/common/w/w;


# instance fields
.field protected final e:Lcom/nianticproject/ingress/common/scanner/ed;

.field protected final f:Lcom/nianticproject/ingress/common/scanner/visuals/cs;

.field private final i:Lcom/nianticproject/ingress/common/scanner/k;

.field private final j:Lcom/nianticproject/ingress/common/scanner/fp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ea;->u:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/ea;->u:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ea;->u:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f00

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->g:Lcom/badlogic/gdx/graphics/Color;

    .line 52
    new-instance v0, Lcom/nianticproject/ingress/common/w/w;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/w/w;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->h:Lcom/nianticproject/ingress/common/w/w;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/cs;

    const-string/jumbo v1, "CLEAR"

    invoke-direct {v0, p1, p3, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;-><init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/scanner/ed;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/cr;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/scanner/visuals/cs;)V

    .line 63
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/bo;

    invoke-direct {v0, p3, p5}, Lcom/nianticproject/ingress/common/scanner/visuals/bo;-><init>(Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/model/k;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/scanner/visuals/cs;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/q;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/k;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->i:Lcom/nianticproject/ingress/common/scanner/k;

    .line 70
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/fp;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->j:Lcom/nianticproject/ingress/common/scanner/fp;

    .line 71
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/ed;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->e:Lcom/nianticproject/ingress/common/scanner/ed;

    .line 73
    iput-object p4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->f:Lcom/nianticproject/ingress/common/scanner/visuals/cs;

    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->i:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, p4}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 75
    return-void
.end method

.method public static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 133
    :try_start_0
    const-string/jumbo v0, "ScannerDestinationVisuals.createResources"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->h:Lcom/nianticproject/ingress/common/w/w;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/w/w;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 141
    :goto_0
    return-void

    .line 137
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->b()V

    .line 138
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->h:Lcom/nianticproject/ingress/common/w/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/w;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->h:Lcom/nianticproject/ingress/common/w/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/w;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/bo;->c()V

    .line 149
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->h:Lcom/nianticproject/ingress/common/w/w;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/w;->e()Z

    goto :goto_0
.end method

.method static synthetic d()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->g:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    :try_start_0
    const-string/jumbo v0, "ScannerDestinationVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->e:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ed;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->f:Lcom/nianticproject/ingress/common/scanner/visuals/cs;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->cpy()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->j:Lcom/nianticproject/ingress/common/scanner/fp;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->e:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/ed;->e()Lcom/google/a/d/u;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v3, 0x0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v1, v2, v3, v0}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->k()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/high16 v2, 0x3fc0

    mul-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    invoke-static {p2, v1}, Lcom/nianticproject/ingress/common/w/ao;->a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cr;->f:Lcom/nianticproject/ingress/common/scanner/visuals/cs;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a(Lcom/badlogic/gdx/math/Vector2;)V

    .line 87
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/j/q;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
