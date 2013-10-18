.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    sget-object v1, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 227
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 228
    sget-object v1, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 229
    cmpl-float v2, v0, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getWidth()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getHeight()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getHeight()F

    move-result v2

    sub-float v1, v2, v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->listSelectedIndex:I

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->listSelectedIndex:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->listSelectedIndex:I

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->listSelectedIndex:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->listSelectedIndex:I

    .line 234
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 202
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 217
    :goto_0
    return v0

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    sget-object v2, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 204
    sget-object v1, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 205
    sget-object v2, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 206
    cmpl-float v3, v1, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getWidth()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    cmpl-float v1, v2, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getHeight()F

    move-result v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getHeight()F

    move-result v3

    sub-float v2, v3, v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->itemHeight:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->listSelectedIndex:I

    .line 208
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->listSelectedIndex:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->listSelectedIndex:I

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->listSelectedIndex:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->listSelectedIndex:I

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->listSelectedIndex:I

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectedIndex:I

    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->items:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 212
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    .line 213
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 214
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 217
    :cond_1
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->hideList()V

    .line 222
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList$1;->this$1:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->stageListener:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 223
    return-void
.end method
