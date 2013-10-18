.class Lcom/badlogic/gdx/assets/AssetManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/assets/AssetManager;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/assets/AssetManager;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager$1;->this$0:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .parameter

    .prologue
    .line 95
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "AssetManager-Loader-Thread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 97
    return-object v0
.end method
