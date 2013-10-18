.class public final Lcom/nianticproject/ingress/shared/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Z

.field private static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/nianticproject/ingress/shared/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nianticproject/ingress/shared/i;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)Lcom/nianticproject/ingress/shared/Result;
    .locals 24
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 191
    const-wide/16 v3, 0x0

    cmp-long v3, v13, v3

    if-lez v3, :cond_0

    const-wide/32 v3, 0x1f400000

    cmp-long v3, v13, v3

    if-lez v3, :cond_1

    .line 192
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "File is empty, too big, or bad."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    :cond_1
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const/4 v7, 0x1

    .line 206
    const-wide/16 v5, 0x0

    .line 207
    const-wide/16 v3, 0x0

    .line 209
    new-instance v16, Lcom/nianticproject/ingress/shared/j;

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Lcom/nianticproject/ingress/shared/j;-><init>(B)V

    move v8, v7

    move-wide/from16 v20, v5

    move-wide/from16 v6, v20

    move-wide/from16 v22, v3

    move-wide/from16 v4, v22

    .line 211
    :cond_2
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/nianticproject/ingress/shared/j;->a()V

    .line 213
    const/4 v9, 0x0

    .line 214
    const/4 v11, 0x0

    .line 215
    const/4 v10, 0x0

    .line 221
    :try_start_1
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :try_start_2
    const-string/jumbo v9, "PUT"

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 223
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 224
    const v9, 0xea60

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 225
    const v9, 0xea60

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 226
    const-string/jumbo v9, "x-goog-api-version"

    const-string/jumbo v12, "2"

    invoke-virtual {v3, v9, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-eqz v8, :cond_9

    .line 230
    sget-object v9, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Query upload status: "

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v9, "Content-Range"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "bytes */"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v9, "Content-Length"

    const-string/jumbo v12, "0"

    invoke-virtual {v3, v9, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_15

    move-object v12, v11

    .line 256
    :goto_1
    if-nez v8, :cond_25

    .line 257
    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 258
    :try_start_4
    invoke-static {v11, v6, v7}, Lcom/nianticproject/ingress/shared/i;->a(Ljava/io/FileInputStream;J)V

    .line 260
    const/4 v9, 0x0

    .line 261
    const/16 v10, 0x2800

    new-array v0, v10, [B

    move-object/from16 v17, v0

    .line 262
    const/4 v10, 0x0

    .line 264
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result v18

    if-lez v18, :cond_4

    .line 266
    const/16 v19, 0x0

    :try_start_5
    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 267
    add-int v10, v10, v18

    .line 274
    :try_start_6
    sget-boolean v18, Lcom/nianticproject/ingress/shared/i;->a:Z

    if-eqz v18, :cond_3

    .line 275
    const/high16 v18, 0x8

    move/from16 v0, v18

    if-le v10, v0, :cond_3

    .line 276
    sget-object v9, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "synthetic failure: "

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 277
    const/4 v9, 0x1

    .line 278
    :cond_4
    :goto_2
    if-nez v9, :cond_b

    .line 286
    :try_start_7
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 287
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 288
    const/4 v12, 0x0

    move-object v9, v11

    move-object v10, v12

    .line 298
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-result v11

    .line 305
    sparse-switch v11, :sswitch_data_0

    .line 351
    :try_start_9
    sget-object v4, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "upload failure:\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/nianticproject/ingress/shared/i;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 352
    sget-object v4, Lcom/nianticproject/ingress/shared/k;->b:Lcom/nianticproject/ingress/shared/k;

    invoke-static {v4}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-result-object v4

    .line 356
    if-eqz v9, :cond_5

    .line 357
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11

    .line 363
    :cond_5
    :goto_4
    if-eqz v10, :cond_6

    .line 364
    :try_start_b
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_12

    .line 369
    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    .line 370
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    move-object v3, v4

    :cond_8
    :goto_6
    return-object v3

    .line 198
    :catch_0
    move-exception v3

    .line 200
    sget-object v4, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Malformed upload URL from server "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    sget-object v3, Lcom/nianticproject/ingress/shared/k;->b:Lcom/nianticproject/ingress/shared/k;

    invoke-static {v3}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v3

    goto :goto_6

    .line 235
    :cond_9
    :try_start_c
    sget-object v9, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Resume upload at "

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v17, " bytes."

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 236
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 237
    long-to-int v9, v4

    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 238
    const-string/jumbo v9, "Content-Length"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-wide/16 v17, 0x0

    cmp-long v9, v6, v17

    if-lez v9, :cond_a

    .line 242
    const-wide/16 v17, 0x1

    sub-long v17, v13, v17

    .line 243
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "bytes "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "-"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 244
    const-string/jumbo v12, "Content-Range"

    invoke-virtual {v3, v12, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_15

    move-result-object v12

    goto/16 :goto_1

    .line 250
    :catch_1
    move-exception v3

    move-object v4, v9

    .line 251
    :goto_7
    :try_start_d
    sget-object v5, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "upload HttpURLConnection IOException "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    sget-object v3, Lcom/nianticproject/ingress/shared/k;->a:Lcom/nianticproject/ingress/shared/k;

    invoke-static {v3}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result-object v3

    .line 356
    if-eqz v4, :cond_8

    .line 370
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 268
    :catch_2
    move-exception v9

    .line 269
    :try_start_e
    sget-object v10, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "upload IOException "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 270
    const/4 v9, 0x1

    .line 271
    goto/16 :goto_2

    .line 289
    :catch_3
    move-exception v9

    .line 290
    sget-object v10, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "output flush/close IOException "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :cond_b
    move-object v9, v11

    move-object v10, v12

    goto/16 :goto_3

    .line 299
    :catch_4
    move-exception v4

    .line 300
    :try_start_f
    sget-object v5, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "upload IOException "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    sget-object v4, Lcom/nianticproject/ingress/shared/k;->a:Lcom/nianticproject/ingress/shared/k;

    invoke-static {v4}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-result-object v4

    .line 356
    if-eqz v9, :cond_c

    .line 357
    :try_start_10
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 363
    :cond_c
    :goto_8
    if-eqz v10, :cond_d

    .line 364
    :try_start_11
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 369
    :cond_d
    :goto_9
    if-eqz v3, :cond_e

    .line 370
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    move-object v3, v4

    goto/16 :goto_6

    .line 359
    :catch_5
    move-exception v5

    .line 360
    sget-object v6, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v8, "Unable to close fileData"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 366
    :catch_6
    move-exception v5

    .line 367
    sget-object v6, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v8, "Unable to close output (likely due to upload interruption)"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 308
    :sswitch_0
    :try_start_12
    const-string/jumbo v4, "ETag"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    const-string/jumbo v5, "ETag missing"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const-string/jumbo v4, ""

    .line 309
    :goto_a
    invoke-static {}, Lcom/google/a/e/ab;->a()Lcom/google/a/e/z;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/a/f/j;->a(Ljava/io/File;Lcom/google/a/e/z;)Lcom/google/a/e/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/e/u;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 311
    invoke-static {}, Lcom/nianticproject/ingress/shared/Result;->a()Lcom/nianticproject/ingress/shared/Result;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-result-object v4

    .line 356
    if-eqz v9, :cond_f

    .line 357
    :try_start_13
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    .line 363
    :cond_f
    :goto_b
    if-eqz v10, :cond_10

    .line 364
    :try_start_14
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    .line 369
    :cond_10
    :goto_c
    if-eqz v3, :cond_11

    .line 370
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    move-object v3, v4

    goto/16 :goto_6

    .line 308
    :cond_12
    const/16 v5, 0x22

    :try_start_15
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x22

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v5, :cond_13

    if-gez v6, :cond_14

    :cond_13
    sget-object v5, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ETag format wrong: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const-string/jumbo v4, ""

    goto :goto_a

    :cond_14
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    move-result-object v4

    goto :goto_a

    .line 359
    :catch_7
    move-exception v5

    .line 360
    sget-object v6, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v8, "Unable to close fileData"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 366
    :catch_8
    move-exception v5

    .line 367
    sget-object v6, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v8, "Unable to close output (likely due to upload interruption)"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 313
    :cond_15
    :try_start_16
    sget-object v6, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "MD5 mismatch: mine="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " theirs="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 314
    sget-object v4, Lcom/nianticproject/ingress/shared/k;->c:Lcom/nianticproject/ingress/shared/k;

    invoke-static {v4}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    move-result-object v4

    .line 356
    if-eqz v9, :cond_16

    .line 357
    :try_start_17
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    .line 363
    :cond_16
    :goto_d
    if-eqz v10, :cond_17

    .line 364
    :try_start_18
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    .line 369
    :cond_17
    :goto_e
    if-eqz v3, :cond_18

    .line 370
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_18
    move-object v3, v4

    goto/16 :goto_6

    .line 359
    :catch_9
    move-exception v5

    .line 360
    sget-object v6, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v8, "Unable to close fileData"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 366
    :catch_a
    move-exception v5

    .line 367
    sget-object v6, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v8, "Unable to close output (likely due to upload interruption)"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 319
    :sswitch_1
    :try_start_19
    const-string/jumbo v4, "Range"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    if-nez v4, :cond_1b

    .line 322
    const-wide/16 v6, 0x0

    .line 336
    :goto_f
    const/4 v8, 0x0

    .line 337
    invoke-virtual/range {v16 .. v16}, Lcom/nianticproject/ingress/shared/j;->b()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 338
    sub-long v4, v13, v6

    .line 356
    if-eqz v9, :cond_19

    .line 357
    :try_start_1a
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_d

    .line 363
    :cond_19
    :goto_10
    if-eqz v10, :cond_1a

    .line 364
    :try_start_1b
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e

    .line 369
    :cond_1a
    :goto_11
    if-eqz v3, :cond_2

    .line 370
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 325
    :cond_1b
    const/16 v5, 0x2d

    :try_start_1c
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 326
    if-gez v5, :cond_1f

    .line 327
    sget-object v4, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getResumableUploadStatus hyphen not found in Range:\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/nianticproject/ingress/shared/i;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 329
    sget-object v4, Lcom/nianticproject/ingress/shared/k;->a:Lcom/nianticproject/ingress/shared/k;

    invoke-static {v4}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    move-result-object v4

    .line 356
    if-eqz v9, :cond_1c

    .line 357
    :try_start_1d
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_b

    .line 363
    :cond_1c
    :goto_12
    if-eqz v10, :cond_1d

    .line 364
    :try_start_1e
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_c

    .line 369
    :cond_1d
    :goto_13
    if-eqz v3, :cond_1e

    .line 370
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1e
    move-object v3, v4

    goto/16 :goto_6

    .line 359
    :catch_b
    move-exception v5

    .line 360
    sget-object v6, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v8, "Unable to close fileData"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 366
    :catch_c
    move-exception v5

    .line 367
    sget-object v6, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v8, "Unable to close output (likely due to upload interruption)"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 331
    :cond_1f
    add-int/lit8 v5, v5, 0x1

    :try_start_1f
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    move-result-wide v4

    .line 332
    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    goto :goto_f

    .line 359
    :catch_d
    move-exception v9

    .line 360
    sget-object v11, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v17, "Unable to close fileData"

    move-object/from16 v0, v17

    invoke-virtual {v11, v12, v0, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 366
    :catch_e
    move-exception v9

    .line 367
    sget-object v10, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v12, "Unable to close output (likely due to upload interruption)"

    invoke-virtual {v10, v11, v12, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 347
    :sswitch_2
    :try_start_20
    sget-object v11, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "upload HTTP error, will retry:\n"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/nianticproject/ingress/shared/i;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    .line 356
    if-eqz v9, :cond_20

    .line 357
    :try_start_21
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_f

    .line 363
    :cond_20
    :goto_14
    if-eqz v10, :cond_21

    .line 364
    :try_start_22
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_10

    .line 369
    :cond_21
    :goto_15
    if-eqz v3, :cond_2

    .line 370
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 359
    :catch_f
    move-exception v9

    .line 360
    sget-object v11, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v17, "Unable to close fileData"

    move-object/from16 v0, v17

    invoke-virtual {v11, v12, v0, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 366
    :catch_10
    move-exception v9

    .line 367
    sget-object v10, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v12, "Unable to close output (likely due to upload interruption)"

    invoke-virtual {v10, v11, v12, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 359
    :catch_11
    move-exception v5

    .line 360
    sget-object v6, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v8, "Unable to close fileData"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 366
    :catch_12
    move-exception v5

    .line 367
    sget-object v6, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v8, "Unable to close output (likely due to upload interruption)"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 355
    :catchall_0
    move-exception v3

    move-object v4, v10

    move-object v5, v11

    .line 356
    :goto_16
    if-eqz v4, :cond_22

    .line 357
    :try_start_23
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_13

    .line 363
    :cond_22
    :goto_17
    if-eqz v5, :cond_23

    .line 364
    :try_start_24
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_14

    .line 369
    :cond_23
    :goto_18
    if-eqz v9, :cond_24

    .line 370
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_24
    throw v3

    .line 359
    :catch_13
    move-exception v4

    .line 360
    sget-object v6, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v8, "Unable to close fileData"

    invoke-virtual {v6, v7, v8, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    .line 366
    :catch_14
    move-exception v4

    .line 367
    sget-object v5, Lcom/nianticproject/ingress/shared/i;->b:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v7, "Unable to close output (likely due to upload interruption)"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    .line 355
    :catchall_1
    move-exception v4

    move-object v5, v11

    move-object v9, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_16

    :catchall_2
    move-exception v3

    move-object v5, v11

    move-object v9, v4

    move-object v4, v10

    goto :goto_16

    :catchall_3
    move-exception v4

    move-object v5, v12

    move-object v9, v3

    move-object v3, v4

    move-object v4, v10

    goto :goto_16

    :catchall_4
    move-exception v4

    move-object v5, v12

    move-object v9, v3

    move-object v3, v4

    move-object v4, v11

    goto :goto_16

    :catchall_5
    move-exception v4

    move-object v5, v10

    move-object/from16 v20, v9

    move-object v9, v3

    move-object v3, v4

    move-object/from16 v4, v20

    goto :goto_16

    .line 250
    :catch_15
    move-exception v4

    move-object/from16 v20, v4

    move-object v4, v3

    move-object/from16 v3, v20

    goto/16 :goto_7

    :cond_25
    move-object v9, v10

    move-object v10, v12

    goto/16 :goto_3

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x134 -> :sswitch_1
        0x198 -> :sswitch_2
        0x1f4 -> :sswitch_2
        0x1f6 -> :sswitch_2
        0x1f7 -> :sswitch_2
        0x1f8 -> :sswitch_2
    .end sparse-switch
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 400
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/FileInputStream;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 414
    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 428
    :goto_0
    return-void

    :cond_0
    move-wide v0, v2

    .line 421
    :cond_1
    sub-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 424
    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    .line 425
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Error seeking file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_2
    cmp-long v0, v2, p1

    if-ltz v0, :cond_0

    goto :goto_0
.end method
