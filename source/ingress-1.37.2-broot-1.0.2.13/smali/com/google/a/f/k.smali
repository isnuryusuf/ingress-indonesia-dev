.class final Lcom/google/a/f/k;
.super Lcom/google/a/c/li;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/li",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1047
    invoke-direct {p0}, Lcom/google/a/c/li;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1063
    const-string/jumbo v0, "Files.fileTreeTraverser()"

    return-object v0
.end method
