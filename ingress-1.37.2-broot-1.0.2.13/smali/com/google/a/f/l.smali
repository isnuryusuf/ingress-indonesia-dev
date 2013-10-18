.class final Lcom/google/a/f/l;
.super Lcom/google/a/f/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/google/a/f/a;-><init>()V

    .line 122
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/a/f/l;->a:Ljava/io/File;

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/google/a/f/l;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/a/f/l;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Files.asByteSource("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/a/f/l;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
