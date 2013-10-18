.class public abstract Lcom/a/a/n;
.super Lcom/a/a/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)F
    .locals 2
    .parameter

    .prologue
    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This value can only be used for a cell property."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
