.class public final Lcom/google/a/e/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:Lcom/google/a/e/z;

.field private static final c:Lcom/google/a/e/z;

.field private static final d:Lcom/google/a/e/z;

.field private static final e:Lcom/google/a/e/z;

.field private static final f:Lcom/google/a/e/z;

.field private static final g:Lcom/google/a/e/z;

.field private static final h:Lcom/google/a/e/z;

.field private static final i:Lcom/google/a/e/z;

.field private static final j:Lcom/google/a/e/z;

.field private static final k:Lcom/google/a/e/z;

.field private static final l:Lcom/google/a/e/z;

.field private static final m:Lcom/google/a/e/z;

.field private static final n:Lcom/google/a/e/z;

.field private static final o:Lcom/google/a/e/z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 58
    sput v0, Lcom/google/a/e/ab;->a:I

    new-instance v1, Lcom/google/a/e/ar;

    invoke-direct {v1, v0}, Lcom/google/a/e/ar;-><init>(I)V

    sput-object v1, Lcom/google/a/e/ab;->b:Lcom/google/a/e/z;

    .line 61
    sget v0, Lcom/google/a/e/ab;->a:I

    new-instance v1, Lcom/google/a/e/ap;

    invoke-direct {v1, v0}, Lcom/google/a/e/ap;-><init>(I)V

    sput-object v1, Lcom/google/a/e/ab;->c:Lcom/google/a/e/z;

    .line 123
    new-instance v0, Lcom/google/a/e/ar;

    invoke-direct {v0, v2}, Lcom/google/a/e/ar;-><init>(I)V

    sput-object v0, Lcom/google/a/e/ab;->d:Lcom/google/a/e/z;

    .line 149
    new-instance v0, Lcom/google/a/e/ap;

    invoke-direct {v0, v2}, Lcom/google/a/e/ap;-><init>(I)V

    sput-object v0, Lcom/google/a/e/ab;->e:Lcom/google/a/e/z;

    .line 162
    new-instance v0, Lcom/google/a/e/au;

    invoke-direct {v0}, Lcom/google/a/e/au;-><init>()V

    sput-object v0, Lcom/google/a/e/ab;->f:Lcom/google/a/e/z;

    .line 183
    new-instance v0, Lcom/google/a/e/an;

    const-string/jumbo v1, "MD5"

    const-string/jumbo v2, "Hashing.md5()"

    invoke-direct {v0, v1, v2}, Lcom/google/a/e/an;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/e/ab;->g:Lcom/google/a/e/z;

    .line 193
    new-instance v0, Lcom/google/a/e/an;

    const-string/jumbo v1, "SHA-1"

    const-string/jumbo v2, "Hashing.sha1()"

    invoke-direct {v0, v1, v2}, Lcom/google/a/e/an;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/e/ab;->h:Lcom/google/a/e/z;

    .line 204
    new-instance v0, Lcom/google/a/e/an;

    const-string/jumbo v1, "SHA-256"

    const-string/jumbo v2, "Hashing.sha256()"

    invoke-direct {v0, v1, v2}, Lcom/google/a/e/an;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/e/ab;->i:Lcom/google/a/e/z;

    .line 215
    new-instance v0, Lcom/google/a/e/an;

    const-string/jumbo v1, "SHA-512"

    const-string/jumbo v2, "Hashing.sha512()"

    invoke-direct {v0, v1, v2}, Lcom/google/a/e/an;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/e/ab;->j:Lcom/google/a/e/z;

    .line 228
    new-instance v0, Lcom/google/a/e/q;

    invoke-direct {v0}, Lcom/google/a/e/q;-><init>()V

    sput-object v0, Lcom/google/a/e/ab;->k:Lcom/google/a/e/z;

    .line 240
    new-instance v0, Lcom/google/a/e/o;

    invoke-direct {v0}, Lcom/google/a/e/o;-><init>()V

    sput-object v0, Lcom/google/a/e/ab;->l:Lcom/google/a/e/z;

    .line 255
    sget-object v0, Lcom/google/a/e/ac;->a:Lcom/google/a/e/ac;

    const-string/jumbo v1, "Hashing.crc32()"

    invoke-static {v0, v1}, Lcom/google/a/e/ab;->a(Lcom/google/a/e/ac;Ljava/lang/String;)Lcom/google/a/e/z;

    move-result-object v0

    sput-object v0, Lcom/google/a/e/ab;->m:Lcom/google/a/e/z;

    .line 271
    sget-object v0, Lcom/google/a/e/ac;->b:Lcom/google/a/e/ac;

    const-string/jumbo v1, "Hashing.adler32()"

    invoke-static {v0, v1}, Lcom/google/a/e/ab;->a(Lcom/google/a/e/ac;Ljava/lang/String;)Lcom/google/a/e/z;

    move-result-object v0

    sput-object v0, Lcom/google/a/e/ab;->n:Lcom/google/a/e/z;

    .line 345
    new-instance v0, Lcom/google/a/e/j;

    invoke-direct {v0}, Lcom/google/a/e/j;-><init>()V

    sput-object v0, Lcom/google/a/e/ab;->o:Lcom/google/a/e/z;

    return-void
.end method

.method public static a()Lcom/google/a/e/z;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/google/a/e/ab;->g:Lcom/google/a/e/z;

    return-object v0
.end method

.method private static a(Lcom/google/a/e/ac;Ljava/lang/String;)Lcom/google/a/e/z;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 275
    new-instance v0, Lcom/google/a/e/h;

    invoke-static {p0}, Lcom/google/a/e/ac;->a(Lcom/google/a/e/ac;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/a/e/h;-><init>(Lcom/google/a/a/bs;ILjava/lang/String;)V

    return-object v0
.end method
