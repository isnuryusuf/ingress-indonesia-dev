.class public final Lcom/nianticproject/ingress/common/scanner/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/o;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/j/ai;

.field private final b:F

.field private final c:F

.field private d:F

.field private final e:Lcom/badlogic/gdx/graphics/Color;

.field private final f:Lcom/badlogic/gdx/graphics/Color;

.field private final g:F

.field private final h:F

.field private final i:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->i:Lcom/badlogic/gdx/math/Matrix4;

    .line 39
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a;->a:Lcom/nianticproject/ingress/common/j/ai;

    .line 40
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->b:F

    .line 41
    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/a;->d:F

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    if-nez p2, :cond_0

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->e:Lcom/badlogic/gdx/graphics/Color;

    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->e:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f80

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a;->e:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->f:Lcom/badlogic/gdx/graphics/Color;

    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->f:Lcom/badlogic/gdx/graphics/Color;

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 47
    const v0, 0x3f2aaaab

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->c:F

    .line 48
    const/high16 v0, 0x40c0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->g:F

    .line 49
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->h:F

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xbe2

    .line 60
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->d:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/a;->c:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    .line 61
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/a;->g:F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/a;->h:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 64
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    .line 66
    invoke-static {}, Lcom/nianticproject/ingress/common/j/ai;->k()V

    .line 67
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a;->e:Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/a;->f:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v2, v3, v0}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V

    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->i:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 70
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->a:Lcom/nianticproject/ingress/common/j/ai;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a;->i:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->a:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->c()[S

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->a:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->i()V

    .line 80
    :goto_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->a:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->j()V

    .line 82
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->a:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->d:F

    .line 55
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/a;->d:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/a;->b:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
