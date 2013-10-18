.class public final Lcom/nianticproject/ingress/common/n/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Ljava/nio/charset/Charset;

.field private static final b:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:I

.field private final g:J

.field private final h:I

.field private i:J

.field private j:Ljava/io/Writer;

.field private final k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/n/e;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private final m:Ljava/util/concurrent/ExecutorService;

.field private final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/n/a;->a:Ljava/nio/charset/Charset;

    .line 111
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/n/a;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/n/a;->b:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/nianticproject/ingress/common/n/a;->i:J

    .line 154
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    .line 159
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->m:Ljava/util/concurrent/ExecutorService;

    .line 161
    new-instance v0, Lcom/nianticproject/ingress/common/n/b;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/n/b;-><init>(Lcom/nianticproject/ingress/common/n/a;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->n:Ljava/util/concurrent/Callable;

    .line 562
    iput-object p1, p0, Lcom/nianticproject/ingress/common/n/a;->c:Ljava/io/File;

    .line 563
    const/4 v0, 0x2

    iput v0, p0, Lcom/nianticproject/ingress/common/n/a;->f:I

    .line 564
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->d:Ljava/io/File;

    .line 565
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->e:Ljava/io/File;

    .line 566
    iput v2, p0, Lcom/nianticproject/ingress/common/n/a;->h:I

    .line 567
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/n/a;->g:J

    .line 568
    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/nianticproject/ingress/common/n/a;
    .locals 5
    .parameter

    .prologue
    .line 350
    const-wide/32 v0, 0x200000

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/n/a;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/n/a;-><init>(Ljava/io/File;)V

    .line 359
    iget-object v1, v0, Lcom/nianticproject/ingress/common/n/a;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    :try_start_0
    invoke-direct {v0}, Lcom/nianticproject/ingress/common/n/a;->a()V

    .line 362
    invoke-direct {v0}, Lcom/nianticproject/ingress/common/n/a;->b()V

    .line 363
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/nianticproject/ingress/common/n/a;->d:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-object v0

    .line 366
    :catch_0
    move-exception v1

    sget-object v1, Lcom/nianticproject/ingress/common/n/a;->b:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Clearing cache at \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" for corrupted journal."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/n/a;->close()V

    iget-object v0, v0, Lcom/nianticproject/ingress/common/n/a;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/a;->b(Ljava/io/File;)V

    .line 372
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 373
    new-instance v0, Lcom/nianticproject/ingress/common/n/a;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/n/a;-><init>(Ljava/io/File;)V

    .line 374
    invoke-direct {v0}, Lcom/nianticproject/ingress/common/n/a;->c()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/n/a;)Ljava/io/Writer;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;

    return-object v0
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 571
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->d:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 572
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 574
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 576
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 577
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 578
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 579
    const-string/jumbo v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/nianticproject/ingress/common/n/a;->f:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/nianticproject/ingress/common/n/a;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 582
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unexpected journal header: ["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0

    .line 589
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    aget-object v5, v4, v0

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string/jumbo v6, "REMOVE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, v4

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 588
    if-eqz v3, :cond_8

    .line 589
    const-string/jumbo v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    if-ge v0, v8, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unexpected journal line: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/n/e;

    if-nez v0, :cond_4

    new-instance v0, Lcom/nianticproject/ingress/common/n/e;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v5, v6}, Lcom/nianticproject/ingress/common/n/e;-><init>(Lcom/nianticproject/ingress/common/n/a;Ljava/lang/String;B)V

    iget-object v6, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string/jumbo v6, "CLEAN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    array-length v5, v4

    iget v6, p0, Lcom/nianticproject/ingress/common/n/a;->h:I

    add-int/lit8 v6, v6, 0x2

    if-ne v5, v6, :cond_5

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->e(Lcom/nianticproject/ingress/common/n/e;)Z

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;Lcom/nianticproject/ingress/common/n/c;)Lcom/nianticproject/ingress/common/n/c;

    array-length v3, v4

    add-int/lit8 v3, v3, -0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v3}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;[Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string/jumbo v6, "DIRTY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    array-length v5, v4

    if-ne v5, v8, :cond_6

    new-instance v3, Lcom/nianticproject/ingress/common/n/c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/nianticproject/ingress/common/n/c;-><init>(Lcom/nianticproject/ingress/common/n/a;Lcom/nianticproject/ingress/common/n/e;B)V

    invoke-static {v0, v3}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;Lcom/nianticproject/ingress/common/n/c;)Lcom/nianticproject/ingress/common/n/c;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string/jumbo v5, "READ"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    array-length v0, v4

    if-eq v0, v8, :cond_2

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unexpected journal line: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :cond_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 593
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/n/a;Lcom/nianticproject/ingress/common/n/c;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/n/a;->a(Lcom/nianticproject/ingress/common/n/c;Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/nianticproject/ingress/common/n/c;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 686
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/nianticproject/ingress/common/n/c;->b(Lcom/nianticproject/ingress/common/n/c;)Lcom/nianticproject/ingress/common/n/e;

    move-result-object v2

    .line 687
    invoke-static {v2}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;)Lcom/nianticproject/ingress/common/n/c;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 688
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 693
    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    invoke-static {v2}, Lcom/nianticproject/ingress/common/n/e;->b(Lcom/nianticproject/ingress/common/n/e;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    .line 694
    :goto_0
    iget v3, p0, Lcom/nianticproject/ingress/common/n/a;->h:I

    if-ge v1, v3, :cond_2

    .line 695
    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/n/e;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 696
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/n/c;->c()V

    .line 697
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "edit didn\'t create file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 702
    :cond_2
    :goto_1
    iget v1, p0, Lcom/nianticproject/ingress/common/n/a;->h:I

    if-ge v0, v1, :cond_5

    .line 703
    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/n/e;->b(I)Ljava/io/File;

    move-result-object v1

    .line 704
    if-eqz p2, :cond_4

    .line 705
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 706
    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/n/e;->a(I)Ljava/io/File;

    move-result-object v3

    .line 707
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 708
    invoke-static {v2}, Lcom/nianticproject/ingress/common/n/e;->d(Lcom/nianticproject/ingress/common/n/e;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 709
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 710
    invoke-static {v2}, Lcom/nianticproject/ingress/common/n/e;->d(Lcom/nianticproject/ingress/common/n/e;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 711
    iget-wide v8, p0, Lcom/nianticproject/ingress/common/n/a;->i:J

    sub-long v3, v8, v4

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/nianticproject/ingress/common/n/a;->i:J

    .line 702
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 714
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 718
    :cond_5
    iget v0, p0, Lcom/nianticproject/ingress/common/n/a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/n/a;->l:I

    .line 719
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;Lcom/nianticproject/ingress/common/n/c;)Lcom/nianticproject/ingress/common/n/c;

    .line 720
    invoke-static {v2}, Lcom/nianticproject/ingress/common/n/e;->b(Lcom/nianticproject/ingress/common/n/e;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_8

    .line 721
    invoke-static {v2}, Lcom/nianticproject/ingress/common/n/e;->e(Lcom/nianticproject/ingress/common/n/e;)Z

    .line 722
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nianticproject/ingress/common/n/e;->c(Lcom/nianticproject/ingress/common/n/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/n/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 728
    :goto_3
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/n/a;->i:J

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/n/a;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/n/a;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 729
    :cond_6
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/a;->n:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    :cond_7
    monitor-exit p0

    return-void

    .line 724
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/n/e;->c(Lcom/nianticproject/ingress/common/n/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "REMOVE "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nianticproject/ingress/common/n/e;->c(Lcom/nianticproject/ingress/common/n/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method static synthetic a(Ljava/io/Closeable;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-static {p0}, Lcom/nianticproject/ingress/common/n/a;->b(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/n/a;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/n/a;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 634
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 635
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 636
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/n/e;

    .line 637
    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;)Lcom/nianticproject/ingress/common/n/c;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 638
    :goto_1
    iget v4, p0, Lcom/nianticproject/ingress/common/n/a;->h:I

    if-ge v1, v4, :cond_0

    .line 639
    iget-wide v4, p0, Lcom/nianticproject/ingress/common/n/a;->i:J

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->d(Lcom/nianticproject/ingress/common/n/e;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/nianticproject/ingress/common/n/a;->i:J

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 642
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;Lcom/nianticproject/ingress/common/n/c;)Lcom/nianticproject/ingress/common/n/c;

    move v1, v2

    .line 643
    :goto_2
    iget v4, p0, Lcom/nianticproject/ingress/common/n/a;->h:I

    if-ge v1, v4, :cond_2

    .line 644
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/n/e;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 645
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/n/e;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 647
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 650
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/n/a;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/n/a;->f()V

    return-void
.end method

.method private static b(Ljava/io/Closeable;)V
    .locals 1
    .parameter

    .prologue
    .line 788
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 793
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v0

    throw v0

    .line 793
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static b(Ljava/io/File;)V
    .locals 5
    .parameter

    .prologue
    .line 756
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 757
    if-nez v1, :cond_0

    .line 758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "not a directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_0
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 761
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 762
    invoke-static {v3}, Lcom/nianticproject/ingress/common/n/a;->b(Ljava/io/File;)V

    .line 764
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 765
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "failed to delete file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    :cond_3
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 425
    if-eqz p0, :cond_0

    .line 426
    :goto_0
    invoke-static {}, Lcom/google/a/e/ab;->a()Lcom/google/a/e/z;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/e/z;->a([B)Lcom/google/a/e/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/e/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 425
    :cond_0
    const-string/jumbo p0, "50840139-b1d2-4ff3-8145-cc1dd0526c1b"

    goto :goto_0
.end method

.method private declared-synchronized c()V
    .locals 5

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 661
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/n/a;->e:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 662
    const-string/jumbo v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 663
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 664
    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 665
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 666
    iget v0, p0, Lcom/nianticproject/ingress/common/n/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 667
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 668
    iget v0, p0, Lcom/nianticproject/ingress/common/n/a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 669
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 670
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/n/e;

    .line 673
    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;)Lcom/nianticproject/ingress/common/n/c;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 674
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->c(Lcom/nianticproject/ingress/common/n/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 676
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->c(Lcom/nianticproject/ingress/common/n/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/n/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 681
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->e:Ljava/io/File;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/a;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 682
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/n/a;->d:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    monitor-exit p0

    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/n/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/n/a;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/n/a;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/n/a;->c()V

    return-void
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 738
    iget v0, p0, Lcom/nianticproject/ingress/common/n/a;->l:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/nianticproject/ingress/common/n/a;->l:I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized d(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 467
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/n/a;->e()V

    .line 468
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/n/e;

    .line 469
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;)Lcom/nianticproject/ingress/common/n/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 490
    :goto_0
    monitor-exit p0

    return v0

    .line 478
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/n/a;->i:J

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->d(Lcom/nianticproject/ingress/common/n/e;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nianticproject/ingress/common/n/a;->i:J

    .line 479
    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->d(Lcom/nianticproject/ingress/common/n/e;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 473
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/nianticproject/ingress/common/n/a;->h:I

    if-ge v1, v2, :cond_3

    .line 474
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/n/e;->a(I)Ljava/io/File;

    move-result-object v2

    .line 475
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 476
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "failed to delete "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 482
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/nianticproject/ingress/common/n/a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/n/a;->l:I

    .line 483
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "REMOVE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 484
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/n/a;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 487
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/a;->n:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/n/a;)I
    .locals 1
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/n/a;->l:I

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 744
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/n/a;)I
    .locals 1
    .parameter

    .prologue
    .line 97
    iget v0, p0, Lcom/nianticproject/ingress/common/n/a;->h:I

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 749
    :goto_0
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/n/a;->i:J

    iget-wide v2, p0, Lcom/nianticproject/ingress/common/n/a;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 751
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/n/a;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 753
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/n/a;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->c:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/n/f;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 384
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/n/a;->e()V

    .line 385
    invoke-static {p1}, Lcom/nianticproject/ingress/common/n/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 386
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/n/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    if-nez v0, :cond_0

    move-object v0, v1

    .line 421
    :goto_0
    monitor-exit p0

    return-object v0

    .line 391
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->b(Lcom/nianticproject/ingress/common/n/e;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v1

    .line 392
    goto :goto_0

    .line 400
    :cond_1
    iget v3, p0, Lcom/nianticproject/ingress/common/n/a;->h:I

    new-array v5, v3, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v2

    .line 402
    :goto_1
    :try_start_2
    iget v6, p0, Lcom/nianticproject/ingress/common/n/a;->h:I

    if-ge v3, v6, :cond_4

    .line 403
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/n/e;->a(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v6, v5, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 402
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 407
    :catch_0
    move-exception v0

    move v0, v2

    :goto_2
    :try_start_3
    iget v2, p0, Lcom/nianticproject/ingress/common/n/a;->h:I

    if-ge v0, v2, :cond_3

    .line 408
    aget-object v2, v5, v0

    if-eqz v2, :cond_2

    .line 409
    aget-object v2, v5, v0

    invoke-static {v2}, Lcom/nianticproject/ingress/common/n/a;->b(Ljava/io/Closeable;)V

    .line 407
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 412
    goto :goto_0

    .line 415
    :cond_4
    iget v0, p0, Lcom/nianticproject/ingress/common/n/a;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/n/a;->l:I

    .line 416
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "READ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 417
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/n/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 418
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/a;->n:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 421
    :cond_5
    new-instance v0, Lcom/nianticproject/ingress/common/n/f;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1}, Lcom/nianticproject/ingress/common/n/f;-><init>([Ljava/io/InputStream;B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/n/c;
    .locals 5
    .parameter

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/n/a;->e()V

    .line 435
    invoke-static {p1}, Lcom/nianticproject/ingress/common/n/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/n/e;

    .line 437
    if-nez v0, :cond_0

    .line 438
    new-instance v0, Lcom/nianticproject/ingress/common/n/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/nianticproject/ingress/common/n/e;-><init>(Lcom/nianticproject/ingress/common/n/a;Ljava/lang/String;B)V

    .line 439
    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 444
    :goto_0
    new-instance v0, Lcom/nianticproject/ingress/common/n/c;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/nianticproject/ingress/common/n/c;-><init>(Lcom/nianticproject/ingress/common/n/a;Lcom/nianticproject/ingress/common/n/e;B)V

    .line 445
    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;Lcom/nianticproject/ingress/common/n/c;)Lcom/nianticproject/ingress/common/n/c;

    .line 448
    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :goto_1
    monitor-exit p0

    return-object v0

    .line 440
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;)Lcom/nianticproject/ingress/common/n/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    .line 441
    const/4 v0, 0x0

    goto :goto_1

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 3

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 549
    :goto_0
    monitor-exit p0

    return-void

    .line 541
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/n/e;

    .line 542
    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;)Lcom/nianticproject/ingress/common/n/c;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 543
    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/e;->a(Lcom/nianticproject/ingress/common/n/e;)Lcom/nianticproject/ingress/common/n/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/n/c;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 546
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/n/a;->f()V

    .line 547
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/n/a;->j:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
