.class Lcom/badlogic/gdx/backends/android/AndroidApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidApplication;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidApplication$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->finish()V

    .line 318
    return-void
.end method
