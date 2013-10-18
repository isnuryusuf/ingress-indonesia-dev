.class Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public scrolled(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4080

    const v3, 0x3f666666

    const v4, 0x3dcccccd

    .line 205
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaHeight:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v2, v5

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollY(F)V

    .line 210
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->areaWidth:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v2, v5

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollX(F)V

    goto :goto_0
.end method
