.class public final Lcom/google/a/f/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/a/c/li;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/li",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1047
    new-instance v0, Lcom/google/a/f/k;

    invoke-direct {v0}, Lcom/google/a/f/k;-><init>()V

    sput-object v0, Lcom/google/a/f/j;->a:Lcom/google/a/c/li;

    return-void
.end method

.method public static a(Ljava/io/File;Lcom/google/a/e/z;)Lcom/google/a/e/u;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 834
    new-instance v0, Lcom/google/a/f/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/f/l;-><init>(Ljava/io/File;B)V

    invoke-virtual {v0, p1}, Lcom/google/a/f/a;->a(Lcom/google/a/e/z;)Lcom/google/a/e/u;

    move-result-object v0

    return-object v0
.end method
