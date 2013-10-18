.class Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->touched:Z

    if-eqz v2, :cond_0

    .line 59
    :goto_0
    return v0

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    iput-boolean v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->touched:Z

    .line 58
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    invoke-virtual {v2, p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->calculatePositionAndValue(FFZ)V

    move v0, v1

    .line 59
    goto :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->calculatePositionAndValue(FFZ)V

    .line 65
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->touched:Z

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad;->calculatePositionAndValue(FFZ)V

    .line 71
    return-void
.end method
