package com.its.board.dto;

import lombok.*;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;


@Getter
@Setter
@ToString
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardDTO {
   private Long id;
   private String boardWriter;
   private String boardPass;
   private String boardTitle;
   private String boardContents;
   private LocalDateTime boardCreatedDate;
   private int boardHits ;
   private String postime;
   private int poscount;



}
