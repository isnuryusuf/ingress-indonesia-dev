.class final Lcom/nianticproject/ingress/common/ui/elements/aw;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

.field private b:Z

.field private c:Z

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    .line 291
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    .line 292
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 283
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->b:Z

    .line 284
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->c:Z

    .line 293
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/aw;->setScaling(Lcom/badlogic/gdx/utils/Scaling;)V

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/nianticproject/ingress/common/ui/elements/aw;->setColor(FFFF)V

    .line 295
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->d:I

    .line 296
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->e:I

    .line 297
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/aw;->setX(F)V

    .line 298
    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionY()I

    move-result v0

    sub-int v0, p4, v0

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->e:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/aw;->setY(F)V

    .line 299
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->b:Z

    if-eqz v0, :cond_0

    .line 311
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->b:Z

    .line 312
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->c:Z

    .line 313
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {p0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;)V

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/aw;->a(F)V

    .line 316
    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 2
    .parameter

    .prologue
    .line 319
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->e:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 320
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/aw;->getHeight()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 321
    iget v1, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->d:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/nianticproject/ingress/common/ui/elements/aw;->setWidth(F)V

    .line 322
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/aw;->setHeight(F)V

    .line 323
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/elements/aw;->setScaling(Lcom/badlogic/gdx/utils/Scaling;)V

    .line 324
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/elements/aw;->invalidate()V

    .line 326
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->c:Z

    if-eq p1, v0, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->b:Z

    .line 304
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->c:Z

    .line 305
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aw;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {p0, p1}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;Z)V

    .line 307
    :cond_1
    return-void
.end method
