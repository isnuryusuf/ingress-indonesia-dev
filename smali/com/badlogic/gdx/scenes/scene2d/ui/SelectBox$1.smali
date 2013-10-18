.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 73
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->hideList()V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    .line 79
    sget-object v2, Lcom/badlogic/gdx/math/Vector2;->tmp:Lcom/badlogic/gdx/math/Vector2;

    .line 80
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->screenCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)V

    .line 81
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget v6, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v4, v5, v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;FF)V

    iput-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    .line 82
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->list:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectList;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method
