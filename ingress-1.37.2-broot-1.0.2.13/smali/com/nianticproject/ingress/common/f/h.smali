.class public abstract Lcom/nianticproject/ingress/common/f/h;
.super Lcom/nianticproject/ingress/common/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/f/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/nianticproject/ingress/common/f/i;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/f/i;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/f/h;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/nianticproject/ingress/common/f/h;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/f/a;-><init>(Ljava/util/concurrent/Executor;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/a/ba;)Lcom/nianticproject/ingress/common/f/a;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/ba",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/nianticproject/ingress/common/f/a",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "BackgroundTask cannot have a callback."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    return-void
.end method
