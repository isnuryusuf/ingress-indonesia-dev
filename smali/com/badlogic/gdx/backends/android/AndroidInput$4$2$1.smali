.class Lcom/badlogic/gdx/backends/android/AndroidInput$4$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$4$2;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput$4$2;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4$2$1;->this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$4$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4$2$1;->this$2:Lcom/badlogic/gdx/backends/android/AndroidInput$4$2;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$4$2;->this$1:Lcom/badlogic/gdx/backends/android/AndroidInput$4;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$4;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input$TextInputListener;->canceled()V

    .line 247
    return-void
.end method
