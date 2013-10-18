.class final Lcom/nianticproject/ingress/common/ui/elements/f;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/c;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/c;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    const-string/jumbo v0, "AvatarPlayerStatusBar:playerChangeListener"

    return-object v0
.end method

.method public final a(IZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 636
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/c;->h(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "L"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/c;->i(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/ui/elements/c;->i(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v3

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->c()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(Lcom/nianticproject/ingress/common/ui/elements/c;JJ)V

    .line 642
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/c;->j(Lcom/nianticproject/ingress/common/ui/elements/c;)V

    .line 643
    return-void
.end method

.method public final a(JJJLcom/nianticproject/ingress/common/model/z;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 597
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(JJJLcom/nianticproject/ingress/common/model/z;)V

    .line 598
    return-void
.end method

.method public final a(JLjava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/model/ApGain;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    const-wide/16 v0, 0x0

    .line 603
    if-eqz p3, :cond_0

    .line 604
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/model/ApGain;

    .line 605
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/model/ApGain;->b()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(J)V

    .line 609
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 613
    if-eq p1, p2, :cond_0

    .line 614
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/c;->b(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    invoke-static {p2}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 617
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/c;->c(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(Lcom/nianticproject/ingress/common/ui/elements/c;Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    .line 618
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/c;->e(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/c;->d(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/nianticproject/ingress/common/ui/elements/SegmentedProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Ljava/lang/Object;)Lcom/a/a/c;

    .line 620
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/c;->f(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a()Lcom/nianticproject/ingress/common/ui/elements/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/elements/u;->a()F

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/elements/c;->f(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;->a()Lcom/nianticproject/ingress/common/ui/elements/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/elements/u;->a()F

    move-result v2

    invoke-static {v0, p2, v1, v2}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(Lcom/nianticproject/ingress/common/ui/elements/c;Lcom/nianticproject/ingress/shared/ai;FF)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    move-result-object v0

    .line 624
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/c;->g(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/elements/c;->f(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 625
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/ui/elements/c;->a(Lcom/nianticproject/ingress/common/ui/elements/c;Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;)Lcom/nianticproject/ingress/common/ui/elements/HighLowWatermarkBar;

    .line 627
    :cond_0
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/f;Lcom/nianticproject/ingress/shared/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 592
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 631
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/f;->a:Lcom/nianticproject/ingress/common/ui/elements/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/c;->b(Lcom/nianticproject/ingress/common/ui/elements/c;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 632
    return-void
.end method
