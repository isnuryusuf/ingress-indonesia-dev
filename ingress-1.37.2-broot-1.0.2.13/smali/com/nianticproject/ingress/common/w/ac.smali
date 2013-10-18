.class public final Lcom/nianticproject/ingress/common/w/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 47
    invoke-interface {p0}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    .line 49
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
