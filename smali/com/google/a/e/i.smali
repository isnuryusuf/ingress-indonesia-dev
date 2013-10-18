.class final Lcom/google/a/e/i;
.super Lcom/google/a/e/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/a/e/h;

.field private final b:Ljava/util/zip/Checksum;


# direct methods
.method private constructor <init>(Lcom/google/a/e/h;Ljava/util/zip/Checksum;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/a/e/i;->a:Lcom/google/a/e/h;

    invoke-direct {p0}, Lcom/google/a/e/a;-><init>()V

    .line 66
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Checksum;

    iput-object v0, p0, Lcom/google/a/e/i;->b:Ljava/util/zip/Checksum;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/e/h;Ljava/util/zip/Checksum;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/a/e/i;-><init>(Lcom/google/a/e/h;Ljava/util/zip/Checksum;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/e/u;
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/a/e/i;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 82
    iget-object v2, p0, Lcom/google/a/e/i;->a:Lcom/google/a/e/h;

    invoke-static {v2}, Lcom/google/a/e/h;->a(Lcom/google/a/e/h;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 88
    long-to-int v0, v0

    invoke-static {v0}, Lcom/google/a/e/v;->a(I)Lcom/google/a/e/u;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/google/a/e/v;->a(J)Lcom/google/a/e/u;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(B)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/a/e/i;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1}, Ljava/util/zip/Checksum;->update(I)V

    .line 72
    return-void
.end method

.method protected final a([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/a/e/i;->b:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 77
    return-void
.end method
