.class public final Lcom/nianticproject/ingress/common/c/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/utils/Disposable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/badlogic/gdx/utils/Disposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Disposable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/n;->a:Lcom/badlogic/gdx/utils/Disposable;

    .line 43
    return-void
.end method


# virtual methods
.method public final a()Lcom/badlogic/gdx/utils/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/n;->a:Lcom/badlogic/gdx/utils/Disposable;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/n;->a:Lcom/badlogic/gdx/utils/Disposable;

    invoke-interface {v0}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    .line 51
    return-void
.end method
