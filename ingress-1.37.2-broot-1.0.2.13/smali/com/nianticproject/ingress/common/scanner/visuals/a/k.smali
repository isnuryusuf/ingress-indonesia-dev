.class public abstract Lcom/nianticproject/ingress/common/scanner/visuals/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/nianticproject/ingress/common/j/o;


# instance fields
.field private a:Z

.field private b:Z

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->d:F

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    return-void
.end method

.method public a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public a(F)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f80

    .line 35
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->a:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->b:Z

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->c:F

    add-float/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->c:F

    .line 37
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->c:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 38
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->a:Z

    .line 40
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->b:Z

    if-eqz v1, :cond_1

    .line 45
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->a:Z

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->a:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->b:Z

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->c:F

    .line 62
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->b:Z

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->a:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->b:Z

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->c:F

    .line 74
    :cond_0
    return-void
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->d:F

    return v0
.end method

.method protected final f()F
    .locals 3

    .prologue
    const/high16 v1, 0x3f80

    .line 98
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->c:F

    div-float/2addr v0, v1

    .line 99
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->a:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->b:Z

    if-eqz v2, :cond_1

    sub-float v0, v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
