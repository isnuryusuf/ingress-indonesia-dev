.class public final Lcom/nianticproject/ingress/l/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/text/SimpleDateFormat;


# instance fields
.field private c:Ljava/io/BufferedWriter;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/d/u;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    .line 58
    const-string/jumbo v0, "provider"

    const-string/jumbo v1, "date_time"

    const-string/jumbo v2, "epoch_ms"

    const-string/jumbo v3, "lat"

    const-string/jumbo v4, "lng"

    const-string/jumbo v5, "alt"

    const-string/jumbo v6, "sigma"

    const-string/jumbo v7, "last_jump"

    const-string/jumbo v8, "sat_num"

    const-string/jumbo v9, "snr"

    const-string/jumbo v10, "az"

    const-string/jumbo v11, "el"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "used_in_fix"

    aput-object v14, v12, v13

    invoke-static/range {v0 .. v12}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/l/d;->a:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMdd-HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/nianticproject/ingress/l/d;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/l/d;->d:Ljava/util/Map;

    .line 93
    invoke-static {}, Lcom/nianticproject/ingress/ec;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/o/a/a;->d:Lcom/nianticproject/ingress/o/a/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/o/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    iput-object v3, p0, Lcom/nianticproject/ingress/l/d;->e:Ljava/lang/String;

    .line 112
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ingress-loclog.csv"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/l/d;->e:Ljava/lang/String;

    .line 103
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 104
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/l/d;->c:Ljava/io/BufferedWriter;

    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/l/d;->c:Ljava/io/BufferedWriter;

    const/16 v1, 0x2c

    invoke-static {v1}, Lcom/google/a/a/ab;->a(C)Lcom/google/a/a/ab;

    move-result-object v1

    sget-object v2, Lcom/nianticproject/ingress/l/d;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/a/a/ab;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/l/d;->c:Ljava/io/BufferedWriter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/l/d;->c:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/nianticproject/ingress/l/d;->c:Ljava/io/BufferedWriter;

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/nianticproject/ingress/l/d;-><init>()V

    return-void
.end method

.method public static a()Lcom/nianticproject/ingress/l/d;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/nianticproject/ingress/l/e;->a:Lcom/nianticproject/ingress/l/d;

    return-object v0
.end method

.method private static b()Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/google/a/c/hc;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 172
    sget-object v0, Lcom/nianticproject/ingress/l/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    const-string/jumbo v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(IJDDDI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-static {}, Lcom/nianticproject/ingress/l/d;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 152
    const-string/jumbo v1, "sat_num"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v1, "date_time"

    sget-object v2, Lcom/nianticproject/ingress/l/d;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v1, "epoch_ms"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v1, "az"

    invoke-static {p6, p7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v1, "el"

    invoke-static {p8, p9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v1, "snr"

    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v1, "used_in_fix"

    invoke-static {p10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/16 v1, 0x2c

    invoke-static {v1}, Lcom/google/a/a/ab;->a(C)Lcom/google/a/a/ab;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/a/a/ab;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/nianticproject/ingress/l/d;->c:Ljava/io/BufferedWriter;

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/nianticproject/ingress/l/d;->c:Ljava/io/BufferedWriter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 164
    iget-object v0, p0, Lcom/nianticproject/ingress/l/d;->c:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;JDDDD)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/l/d;->c:Ljava/io/BufferedWriter;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/l/d;->b()Ljava/util/LinkedHashMap;

    move-result-object v8

    .line 122
    const-string/jumbo v0, "provider"

    invoke-virtual {v8, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v0, "date_time"

    sget-object v1, Lcom/nianticproject/ingress/l/d;->b:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v0, "epoch_ms"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v0, "lat"

    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v0, "lng"

    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v0, "alt"

    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v0, "sigma"

    invoke-static/range {p10 .. p11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-wide/high16 v3, -0x4010

    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/l/d;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/a/d/u;

    .line 133
    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {v2}, Lcom/google/a/d/u;->c()D

    move-result-wide v0

    invoke-virtual {v2}, Lcom/google/a/d/u;->f()D

    move-result-wide v2

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lcom/nianticproject/ingress/shared/b/a;->a(DDDD)D

    move-result-wide v0

    .line 137
    :goto_1
    iget-object v2, p0, Lcom/nianticproject/ingress/l/d;->d:Ljava/util/Map;

    invoke-static/range {p4 .. p7}, Lcom/google/a/d/u;->b(DD)Lcom/google/a/d/u;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v2, "last_jump"

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/a/a/ab;->a(C)Lcom/google/a/a/ab;

    move-result-object v0

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/a/ab;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/nianticproject/ingress/l/d;->c:Ljava/io/BufferedWriter;

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/nianticproject/ingress/l/d;->c:Ljava/io/BufferedWriter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/l/d;->c:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-wide v0, v3

    goto :goto_1
.end method
