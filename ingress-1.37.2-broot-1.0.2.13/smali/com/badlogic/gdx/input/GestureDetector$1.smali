.class Lcom/badlogic/gdx/input/GestureDetector$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/input/GestureDetector;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/input/GestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/badlogic/gdx/input/GestureDetector$1;->this$0:Lcom/badlogic/gdx/input/GestureDetector;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$1;->this$0:Lcom/badlogic/gdx/input/GestureDetector;

    iget-object v0, v0, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$1;->this$0:Lcom/badlogic/gdx/input/GestureDetector;

    iget-object v1, v1, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector$1;->this$0:Lcom/badlogic/gdx/input/GestureDetector;

    iget-object v2, v2, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->longPress(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$1;->this$0:Lcom/badlogic/gdx/input/GestureDetector;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    .line 61
    :cond_0
    return-void
.end method
