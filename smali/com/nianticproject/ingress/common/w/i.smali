.class public final Lcom/nianticproject/ingress/common/w/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/badlogic/gdx/graphics/Color;

.field public static final b:Lcom/badlogic/gdx/graphics/Color;

.field public static final c:Lcom/badlogic/gdx/graphics/Color;

.field public static final d:Lcom/badlogic/gdx/graphics/Color;

.field public static final e:Lcom/badlogic/gdx/graphics/Color;

.field public static final f:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x3f333333

    const/high16 v4, 0x3f00

    const v3, 0x3e99999a

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 14
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v3, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/w/i;->a:Lcom/badlogic/gdx/graphics/Color;

    .line 15
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v4, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/w/i;->b:Lcom/badlogic/gdx/graphics/Color;

    .line 16
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v5, v5, v5, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/w/i;->c:Lcom/badlogic/gdx/graphics/Color;

    .line 17
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/w/i;->d:Lcom/badlogic/gdx/graphics/Color;

    .line 18
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/w/i;->e:Lcom/badlogic/gdx/graphics/Color;

    .line 19
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/w/i;->f:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public static a(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 27
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 28
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 29
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 30
    return-object p0
.end method
