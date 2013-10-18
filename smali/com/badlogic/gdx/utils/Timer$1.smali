.class Lcom/badlogic/gdx/utils/Timer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/utils/Timer;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/Timer;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Timer$1;->this$0:Lcom/badlogic/gdx/utils/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer$1;->this$0:Lcom/badlogic/gdx/utils/Timer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer;->update()V

    .line 35
    return-void
.end method
