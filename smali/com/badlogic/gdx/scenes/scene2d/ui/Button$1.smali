.class Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isDisabled:Z

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    .line 87
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
