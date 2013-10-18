.class final Lcom/google/a/a/al;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/a/a/am;

    invoke-direct {v0}, Lcom/google/a/a/am;-><init>()V

    sput-object v0, Lcom/google/a/a/al;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static a()J
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
